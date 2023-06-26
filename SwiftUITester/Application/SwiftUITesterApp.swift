//
//  SwiftUITesterApp.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI

import Firebase

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct SwiftUITesterApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            RealTimeChatView()
        }
    }
}
