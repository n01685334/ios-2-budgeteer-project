//
//  LoginSignupView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct LoginSignupView: View {
    @Binding var isLoggedIn: Bool
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            Text("welcome\nto budgeteer!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            VStack(spacing: 20) {
                Button("login") {
                    isLoggedIn = true
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
                Button("signup") {
                    isLoggedIn = true
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    LoginSignupView(isLoggedIn: .constant(false))
}
