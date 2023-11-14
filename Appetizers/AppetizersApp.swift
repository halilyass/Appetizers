//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Halil YAŞ on 8.11.2023.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
