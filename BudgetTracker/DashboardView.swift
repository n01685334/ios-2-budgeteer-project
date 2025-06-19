//
//  DashboardView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct DashboardView: View {
    @State private var hasSetupBudget = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    if !hasSetupBudget {
                        VStack(spacing: 20) {
                            Text("Set up your budget!")
                                .font(.title2)
                                .padding()
                            
                            NavigationLink(destination: SettingsView()) {
                                Text("Settings")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding(.horizontal)
                        }
                        .padding()
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("This Month")
                            .font(.title2)
                            .bold()
                        
                        Text("remaining budget: $200.35")
                            .font(.subheadline)
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Monthly Breakdown")
                                .font(.headline)
                            
                            // Placeholder donut chart
                            Rectangle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(height: 200)
                                .cornerRadius(10)
                                .overlay(
                                    Text("Donut Chart Placeholder")
                                        .foregroundColor(.gray)
                                )
                        }
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("Category spending over time")
                                .font(.headline)
                            
                            // Placeholder line chart
                            Rectangle()
                                .fill(Color.gray.opacity(0.3))
                                .frame(height: 150)
                                .cornerRadius(10)
                                .overlay(
                                    Text("Line Chart Placeholder")
                                        .foregroundColor(.gray)
                                )
                        }
                        
                        VStack(alignment: .leading, spacing: 15) {
                            Text("History")
                                .font(.headline)
                            
                            VStack(spacing: 0) {
                                HStack {
                                    Text("Month")
                                        .font(.subheadline)
                                        .bold()
                                    Spacer()
                                    Text("Budget")
                                        .font(.subheadline)
                                        .bold()
                                    Spacer()
                                    Text("Actual")
                                        .font(.subheadline)
                                        .bold()
                                }
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                
                                HStack {
                                    Text("Jan")
                                    Spacer()
                                    Text("1000")
                                    Spacer()
                                    Text("50")
                                }
                                .padding()
                            }
                            .background(Color.gray.opacity(0.05))
                            .cornerRadius(10)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Dashboard")
        }
    }
}

#Preview {
    DashboardView()
}
