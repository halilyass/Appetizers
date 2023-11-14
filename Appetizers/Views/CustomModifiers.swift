//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Halil YAŞ on 13.11.2023.
//

import SwiftUI

struct StandartButtonStyle : ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standartButtonStyle() -> some View {
        self.modifier(StandartButtonStyle())
    }
}
