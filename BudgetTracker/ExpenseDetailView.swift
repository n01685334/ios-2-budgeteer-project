//
//  ExpenseDetailView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//
import SwiftUI

struct ExpenseDetailView: View {
    let expense: Expense
    @State private var showingEditView = false
    @State private var showingDeleteAlert = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Expense Name")
                            .font(.headline)
                        Spacer()
                        Text("$\(expense.amount, specifier: "%.2f")")
                            .font(.title2)
                            .bold()
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Expense Description")
                            .font(.headline)
                        Text("CATEGORY: \(expense.category.rawValue.uppercased())")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        if let location = expense.location {
                            Text("Location: \(location)")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        Text("Shared? \(expense.isShared ? "Yes" : "No")")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        if expense.isShared {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Shared Total: $\(expense.amount, specifier: "%.2f")")
                                    .font(.subheadline)
                                    .padding(.top, 10)
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Member 1: $25")
                                        .font(.caption)
                                    Text("Member 2: $35")
                                        .font(.caption)
                                    Text("Member 3: $25")
                                        .font(.caption)
                                }
                                .padding(.leading, 10)
                            }
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                        }
                    }
                }
                .padding()
                
                Spacer()
                
                HStack(spacing: 20) {
                    Button("edit") {
                        showingEditView = true
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .foregroundColor(.blue)
                    .cornerRadius(10)
                    
                    Button("delete") {
                        showingDeleteAlert = true
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red.opacity(0.2))
                    .foregroundColor(.red)
                    .cornerRadius(10)
                }
                .padding()
            }
        }
        .navigationTitle("Expense Detail")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $showingEditView) {
            EditExpenseView(expense: expense)
        }
        .alert("Delete Expense", isPresented: $showingDeleteAlert) {
            Button("Cancel", role: .cancel) { }
            Button("Delete", role: .destructive) {
                // Delete expense
            }
        } message: {
            Text("Are you sure you want to delete this expense?")
        }
    }
}

#Preview {
    NavigationView {
        ExpenseDetailView(expense: DummyData.expenses[0])
    }
}
