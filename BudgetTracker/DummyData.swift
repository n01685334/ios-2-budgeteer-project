//
//  DummyData.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import Foundation

struct DummyData {
    static let expenses: [Expense] = [
        Expense(
            userId: "user123",
            name: "Water Bill",
            amount: 50.0,
            description: "Monthly water bill",
            category: .bills,
            location: "Toronto, ON",
            photoURL: nil,
            isShared: false,
            sharedExpenseId: nil,
            date: Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Grocery Shopping",
            amount: 42.75,
            description: "Weekly groceries - my share",
            category: .food,
            location: "Metro Supermarket",
            photoURL: nil,
            isShared: true,
            sharedExpenseId: "shared123",
            date: Calendar.current.date(byAdding: .day, value: -1, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Gas",
            amount: 45.00,
            description: "Car fuel",
            category: .transportation,
            location: "Shell Station",
            photoURL: nil,
            isShared: false,
            sharedExpenseId: nil,
            date: Calendar.current.date(byAdding: .day, value: -2, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Movie Tickets",
            amount: 15.00,
            description: "Weekend movie - my ticket",
            category: .entertainment,
            location: "Cinema Downtown",
            photoURL: nil,
            isShared: true,
            sharedExpenseId: "shared456",
            date: Calendar.current.date(byAdding: .day, value: -3, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Coffee",
            amount: 4.50,
            description: "Morning coffee",
            category: .food,
            location: "Starbucks",
            photoURL: nil,
            isShared: false,
            sharedExpenseId: nil,
            date: Calendar.current.date(byAdding: .day, value: -4, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Uber Ride",
            amount: 18.25,
            description: "Ride to downtown",
            category: .transportation,
            location: nil,
            photoURL: nil,
            isShared: false,
            sharedExpenseId: nil,
            date: Calendar.current.date(byAdding: .day, value: -5, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Internet Bill",
            amount: 65.00,
            description: "Monthly internet service",
            category: .bills,
            location: nil,
            photoURL: nil,
            isShared: false,
            sharedExpenseId: nil,
            date: Calendar.current.date(byAdding: .day, value: -6, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Restaurant Dinner",
            amount: 28.50,
            description: "Dinner with friends - my portion",
            category: .food,
            location: "Italian Bistro",
            photoURL: nil,
            isShared: true,
            sharedExpenseId: "shared789",
            date: Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Phone Case",
            amount: 25.99,
            description: "New protective case",
            category: .other,
            location: "Best Buy",
            photoURL: nil,
            isShared: false,
            sharedExpenseId: nil,
            date: Calendar.current.date(byAdding: .day, value: -8, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        ),
        Expense(
            userId: "user123",
            name: "Concert Tickets",
            amount: 75.00,
            description: "Live music event",
            category: .entertainment,
            location: "Rogers Centre",
            photoURL: nil,
            isShared: false,
            sharedExpenseId: nil,
            date: Calendar.current.date(byAdding: .day, value: -9, to: Date()) ?? Date(),
            createdAt: Date(),
            updatedAt: Date()
        )
    ]
    
    static let user = User(
        username: "John Doe",
        email: "john@example.com",
        monthlyBudget: 1000.0,
        categoryBudgets: [
            .food: 300.0,
            .transportation: 200.0,
            .bills: 250.0,
            .entertainment: 150.0,
            .other: 100.0
        ],
        createdAt: Date(),
        updatedAt: Date()
    )
}
