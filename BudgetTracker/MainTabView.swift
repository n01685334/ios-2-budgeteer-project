//
//  MainTabView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    Image(systemName: "house")
                    Text("home/dashboard")
                }
            
            CreateExpenseView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("+ expense")
                }
            
            ExpenseListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("expense list")
                }
            
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("settings")
                }
        }
    }
}

#Preview {
    MainTabView()
}
