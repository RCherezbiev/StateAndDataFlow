//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Rustam Cherezbiev on 09.03.2024.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    var name = ""
    @Published var isLoggedIn = false
}
