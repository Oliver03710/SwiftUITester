//
//  SwiftUITesterApp.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI
import Firebase

@main
struct SwiftUITesterApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            GeoParentView()
        }
    }
}
