//
//  User.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import Foundation

struct User: Identifiable {
    let id = UUID()
    var username: String
    var email: String
    var monthlyBudget: Double
    var categoryBudgets: [Category: Double]
    var createdAt: Date
    var updatedAt: Date
}
