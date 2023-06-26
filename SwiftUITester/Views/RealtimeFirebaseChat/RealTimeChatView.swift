//
//  RealTimeChatView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/06/26.
//

import SwiftUI

import FirebaseDatabase

struct RealTimeChatView: View {
    @State private var message: [String] = []
    
    private let database = Database.database().reference()
    
    var body: some View {
        VStack {
            ForEach(message, id: \.self) {
                Text($0)
            }
        }
        .onAppear {
            observe()
        }
    }
    
    private func observe() {
        database.child("chat").observe(.childAdded) { snapShot in
            guard let text = snapShot.value as? String else { return }
            message.append(text)
        }
        
        database.child("chat").observe(.childRemoved) { snapShot in
            print("observe Removed: ", snapShot)
        }
        
        database.child("chat").observeSingleEvent(of: .value) { snapShot in
            print("observeSingleEvent: ", snapShot)
        }

    }
}

struct RealTimeChat_Previews: PreviewProvider {
    static var previews: some View {
        RealTimeChatView()
    }
}
