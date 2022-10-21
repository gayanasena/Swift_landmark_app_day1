//
//  MyFirstAppApp.swift
//  MyFirstApp
//
//  Created by Stephen Innovations on 2022-10-18.
//

import SwiftUI

@main
struct MyFirstAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
