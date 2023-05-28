//
//  Message.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
