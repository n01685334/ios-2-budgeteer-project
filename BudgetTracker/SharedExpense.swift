//
//  SharedExpense.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import Foundation

// Temporary session - gets deleted after finalization
struct SharedExpense: Identifiable {
    let id = UUID()
    var sessionId: String
    var creatorId: String
    var name: String
    var totalAmount: Double // Total bill amount
    var description: String?
    var category: Category
    var location: String?
    var photoURL: String?
    var status: SharedExpenseStatus
    var members: [String] // Array of userIds
    var splits: [String: Double] // userId -> their portion amount
    var createdAt: Date
    var expiresAt: Date
}

enum SharedExpenseStatus: String, CaseIterable {
    case active = "active"
    case finalized = "finalized" // Will be deleted after individual expenses are created
    case cancelled = "cancelled" // Will be deleted
}

// UI helper model for the shared expense view
struct SharedMember: Identifiable {
    let id = UUID()
    var userId: String?
    var name: String
    var amount: Double
    var isCreator: Bool
    var autoSplit: Bool = true
}
