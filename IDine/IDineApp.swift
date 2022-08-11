//
//  IDineApp.swift
//  IDine
//
//  Created by Alex Paramonov on 19.07.22.
//

import SwiftUI

@main
struct IDineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
