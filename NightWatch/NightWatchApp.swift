//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by BS274 on 16/10/22.
//

import SwiftUI

@main
struct NightWatchApp: App {
    
    @StateObject var nightWatchTask = NightWatchTask()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTask: nightWatchTask)
        }
    }
}
