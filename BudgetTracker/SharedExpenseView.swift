//
//  SharedExpenseView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//
import SwiftUI

struct SharedExpenseView: View {
    @Binding var expenseName: String
    @Binding var amount: String
    @Binding var description: String
    @Binding var selectedCategory: Category
    @Environment(\.dismiss) private var dismiss
    
    @State private var members = [
        SharedMember(name: "Creator", amount: 20, isCreator: true),
        SharedMember(name: "Member 2", amount: 20, isCreator: false),
        SharedMember(name: "Member 3", amount: 20, isCreator: false),
        SharedMember(name: "Member 4", amount: 20, isCreator: false)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading, spacing: 15) {
                        HStack {
                            Text("Shared Expense")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Button("INVITE LINK") {
                                // Generate invite link
                            }
                            .padding(.horizontal, 15)
                            .padding(.vertical, 8)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Expense Name")
                            TextField("Enter expense name", text: $expenseName)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Amount")
                            TextField("Enter amount", text: $amount)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Description")
                            TextField("Enter description", text: $description)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Category")
                            Picker("Category", selection: $selectedCategory) {
                                ForEach(Category.allCases, id: \.self) { category in
                                    Text(category.rawValue).tag(category)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        HStack(spacing: 10) {
                            Button("Add Location") {
                                // Add location action
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                            
                            Button("Add Photo") {
                                // Add photo action
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(10)
                        }
                    }
                    
                    // Members Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Members")
                            .font(.title2)
                            .bold()
                        
                        ForEach(members.indices, id: \.self) { index in
                            HStack {
                                if members[index].isCreator {
                                    Text(members[index].name)
                                        .font(.headline)
                                } else {
                                    HStack {
                                        Button(action: {
                                            members.remove(at: index)
                                        }) {
                                            Image(systemName: "minus.circle.fill")
                                                .foregroundColor(.red)
                                        }
                                        Text(members[index].name)
                                    }
                                }
                                
                                Spacer()
                                
                                TextField("Amount", value: $members[index].amount, format: .number)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .frame(width: 80)
                                    .keyboardType(.decimalPad)
                                
                                Button(action: {
                                    // Auto-split toggle
                                }) {
                                    Image(systemName: members[index].autoSplit ? "checkmark.square" : "square")
                                }
                            }
                            .padding(.vertical, 5)
                        }
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 10) {
                        Button("Leave") {
                            dismiss()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange.opacity(0.2))
                        .foregroundColor(.orange)
                        .cornerRadius(10)
                        
                        Button("Cancel") {
                            dismiss()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red.opacity(0.2))
                        .foregroundColor(.red)
                        .cornerRadius(10)
                        
                        Button("Finalize") {
                            // Finalize shared expense
                            dismiss()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .foregroundColor(.green)
                        .cornerRadius(10)
                    }
                }
                .padding()
            }
            .navigationTitle("Split Expense")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    SharedExpenseView(
        expenseName: .constant("Dinner"),
        amount: .constant("80"),
        description: .constant("Group dinner"),
        selectedCategory: .constant(.food)
    )
}
