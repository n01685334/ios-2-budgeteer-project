//
//  Expense.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import Foundation

struct Expense: Identifiable {
    let id = UUID()
    var userId: String // Owner of the expense
    var name: String
    var amount: Double // This user's portion (not the total bill amount)
    var description: String
    var category: Category
    var location: String?
    var photoURL: String?
    var isShared: Bool
    var sharedExpenseId: String? // Reference to the original session (for history)
    var date: Date
    var createdAt: Date
    var updatedAt: Date
}
