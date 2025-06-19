//
//  CreateExpenseView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct CreateExpenseView: View {
    @State private var expenseName = ""
    @State private var amount = ""
    @State private var description = ""
    @State private var selectedCategory = Category.bills
    @State private var showingSharedExpense = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("New Expense")
                            .font(.title2)
                            .bold()
                        Spacer()
                        Button("SPLIT") {
                            showingSharedExpense = true
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
                    
                    VStack(spacing: 10) {
                        Button("Add Location") {
                            // Placeholder action
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        
                        Button("Add Photo") {
                            // Placeholder action
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                    }
                }
                .padding()
                
                Spacer()
                
                HStack(spacing: 20) {
                    Button("Cancel") {
                        // Clear form
                        expenseName = ""
                        amount = ""
                        description = ""
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red.opacity(0.2))
                    .foregroundColor(.red)
                    .cornerRadius(10)
                    
                    Button("Finalize") {
                        // Save expense
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green.opacity(0.2))
                    .foregroundColor(.green)
                    .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Add Expense")
            .navigationBarHidden(true)
            .sheet(isPresented: $showingSharedExpense) {
                SharedExpenseView(
                    expenseName: $expenseName,
                    amount: $amount,
                    description: $description,
                    selectedCategory: $selectedCategory
                )
            }
        }
    }
}

#Preview {
    CreateExpenseView()
}
