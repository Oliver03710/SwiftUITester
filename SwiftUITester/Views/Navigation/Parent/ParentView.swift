//
//  ParentView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI

struct ParentView: View {
    @StateObject private var stateViewModel = ParentStateViewModel()
    @ObservedObject private var observedViewModel = ParentObservedViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Label("Parent View", systemImage: "person.2.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color(.systemRed))
                
                Divider()
                
                Toggle("State Toggle", isOn: $stateViewModel.isOn)
                Toggle("observed Toggle", isOn: $observedViewModel.isOn)
                
                Divider()
                
                HStack {
                    NavigationLink {
                        AChildView()
                            .environmentObject(stateViewModel)
                    } label: {
                        Text("To A Child View 👶")
                            .font(.headline)
                            .foregroundColor(Color(.systemBlue))
                    }
                    
                    Divider()
                        .frame(height: 40)
                    
                    NavigationLink {
                        BChildView()
                            .environmentObject(observedViewModel)
                    } label: {
                        Text("To B Child View 👧")
                            .font(.headline)
                            .foregroundColor(Color(.systemBlue))
                    }
                }
            }
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
