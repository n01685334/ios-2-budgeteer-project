//
//  SettingsView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct SettingsView: View {
    @State private var username = "John Doe"
    @State private var monthlyBudget = "1000"
    @State private var category1Budget = "50"
    @State private var category2Budget = "50"
    @State private var category3Budget = "50"
    @State private var pushNotifications = false
    @State private var notificationFrequency = "daily"
    
    let frequencies = ["daily", "weekly", "monthly"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 25) {
                    // User Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("User")
                            .font(.title2)
                            .bold()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("User Name")
                            TextField("Enter username", text: $username)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }
                        
                        VStack(spacing: 10) {
                            Button("clear data") {
                                // Clear data action
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.orange.opacity(0.2))
                            .foregroundColor(.orange)
                            .cornerRadius(10)
                            
                            Button("delete account") {
                                // Delete account action
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.red.opacity(0.2))
                            .foregroundColor(.red)
                            .cornerRadius(10)
                        }
                    }
                    
                    // Budget Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Budget")
                            .font(.title2)
                            .bold()
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Monthly Budget")
                            TextField("$1000", text: $monthlyBudget)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(.decimalPad)
                        }
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Category Budgets")
                                .font(.headline)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Category1 (xx%)")
                                TextField("$50", text: $category1Budget)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.decimalPad)
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Category2 (xx%)")
                                TextField("$50", text: $category2Budget)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.decimalPad)
                            }
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Category3 (xx%)")
                                TextField("$50", text: $category3Budget)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .keyboardType(.decimalPad)
                            }
                        }
                        
                        Button("save") {
                            // Save settings
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .foregroundColor(.green)
                        .cornerRadius(10)
                    }
                    
                    // Notifications Section
                    VStack(alignment: .leading, spacing: 15) {
                        Text("Notifications")
                            .font(.title2)
                            .bold()
                        
                        Toggle("push notifications", isOn: $pushNotifications)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Budget update frequency")
                            Picker("Frequency", selection: $notificationFrequency) {
                                ForEach(frequencies, id: \.self) { frequency in
                                    Text(frequency).tag(frequency)
                                }
                            }
                            .pickerStyle(MenuPickerStyle())
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingsView()
}
