//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Rustam Cherezbiev on 09.03.2024.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var contentViewVM = ContentViewViewModel()
    @StateObject private var loginViewVM = LoginViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(contentViewVM)
        .environmentObject(loginViewVM)
    }
}
