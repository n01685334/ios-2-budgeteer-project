//
//  ContentView.swift
//  BudgetTracker
//
//  Created by Ghanshyam Anilbhai Soni on 2025-06-13.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var isLoggedIn = false
    
    var body: some View {
        if isLoggedIn {
            MainTabView()
        } else {
            LoginSignupView(isLoggedIn: $isLoggedIn)
        }
    }
}

#Preview {
    ContentView()
}
