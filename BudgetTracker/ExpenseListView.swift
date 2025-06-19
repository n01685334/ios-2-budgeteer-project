//
//  ExpenseListView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct ExpenseListView: View {
    @State private var searchText = ""
    @State private var selectedMonth = "All"
    @State private var selectedCategory = "All"
    
    let months = ["All", "January", "February", "March", "April", "May", "June"]
    let categories = ["All"] + Category.allCases.map { $0.rawValue }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                // Search bar
                HStack {
                    TextField("search", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("search") {
                        // Search action
                    }
                    .padding(.horizontal, 15)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .padding(.horizontal)
                
                // Filters
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Filter")
                            .font(.headline)
                        Spacer()
                        Button("clear filter") {
                            selectedMonth = "All"
                            selectedCategory = "All"
                        }
                        .foregroundColor(.blue)
                    }
                    
                    HStack(spacing: 15) {
                        Picker("Month", selection: $selectedMonth) {
                            ForEach(months, id: \.self) { month in
                                Text(month).tag(month)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .frame(maxWidth: .infinity)
                        
                        Picker("Category", selection: $selectedCategory) {
                            ForEach(categories, id: \.self) { category in
                                Text(category).tag(category)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .frame(maxWidth: .infinity)
                    }
                }
                .padding(.horizontal)
                
                // Expense list
                List {
                    ForEach(DummyData.expenses) { expense in
                        NavigationLink(destination: ExpenseDetailView(expense: expense)) {
                            HStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text(expense.name)
                                        .font(.headline)
                                    Text(expense.date, style: .date)
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, spacing: 4) {
                                    Text("$\(expense.amount, specifier: "%.2f")")
                                        .font(.headline)
                                    Text(expense.category.rawValue)
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                    .onDelete { indexSet in
                        // Delete action with confirmation
                    }
                }
            }
            .navigationTitle("Expense List")
        }
    }
}

#Preview {
    ExpenseListView()
}
