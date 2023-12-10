//
//  SwiftUIProjectApp.swift
//  SwiftUIProject
//
//  Created by Berkin Koca on 10.07.2023.
//

import SwiftUI

@main
struct SwiftUIProjectApp: App {
     @StateObject private var modelData = ModelData()
     
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
