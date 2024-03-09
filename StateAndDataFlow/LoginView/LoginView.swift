//
//  SwiftUIView.swift
//  StateAndDataFlow
//
//  Created by Rustam Cherezbiev on 09.03.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $loginViewVM.name)
                .multilineTextAlignment(.center)
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
        }
    }
    
    private func login() {
        if !loginViewVM.name.isEmpty {
            loginViewVM.isLoggedIn.toggle()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
