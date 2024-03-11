//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Rustam Cherezbiev on 09.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    private let contentViewVM = ContentViewViewModel()
    
    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.user.name)!")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .offset(x: 0, y: 200)
            
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(
                    action: contentViewVM.startTimer,
                    text: contentViewVM.buttonTitle,
                    color: .red
                )
                
                Spacer()
                
                ButtonView(
                    action: loginViewVM.logOut,
                    text: "LogOut",
                    color: .blue
                )
            }
            
            Spacer()
            
            
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginViewViewModel())
}
