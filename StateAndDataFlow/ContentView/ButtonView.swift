//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Rustam Cherezbiev on 11.03.2024.
//

import SwiftUI

struct ButtonView: View {
    
    let action: () -> Void
    let text: String
    var color: Color
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(minWidth: 200, minHeight: 60)
        .background(color)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}

#Preview {
    ButtonView(action: {}, text: "Some Action", color: .red)
}
