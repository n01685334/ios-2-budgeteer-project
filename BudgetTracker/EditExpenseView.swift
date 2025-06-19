//
//  EditExpenseView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct EditExpenseView: View {
    let expense: Expense
    @State private var expenseName: String
    @State private var amount: String
    @State private var description: String
    @State private var selectedCategory: Category
    @Environment(\.dismiss) private var dismiss
    
    init(expense: Expense) {
        self.expense = expense
        _expenseName = State(initialValue: expense.name)
        _amount = State(initialValue: String(expense.amount))
        _description = State(initialValue: expense.description)
        _selectedCategory = State(initialValue: expense.category)
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                VStack(alignment: .leading, spacing: 15) {
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
                }
                .padding()
                
                Spacer()
                
                Button("save") {
                    // Save changes
                    dismiss()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green.opacity(0.2))
                .foregroundColor(.green)
                .cornerRadius(10)
                .padding()
            }
            .navigationTitle("Edit Expense")
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
    EditExpenseView(expense: DummyData.expenses[0])
}
