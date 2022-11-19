//
//  KonjugiApp.swift
//  Konjugi
//
//  Created by Björn Viehmann on 18.05.22.
//

import SwiftUI

@main
struct KonjugiApp: App {
    
    @StateObject var gameManager = GameManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(gameManager)
        }
    }
}
