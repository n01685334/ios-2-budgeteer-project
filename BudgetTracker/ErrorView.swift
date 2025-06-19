//
//  ErrorView.swift
//  BudgetTracker
//
//  Created by James Chard on 2025/6/19.
//

import SwiftUI

struct ErrorView: View {
    let message: String
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            Text("Sorry, that link is invalid or has expired")
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding()
            
            Button("Back to Dashboard") {
                dismiss()
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .padding(.horizontal, 40)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ErrorView(message: "Link expired")
}
