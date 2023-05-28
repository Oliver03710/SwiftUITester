//
//  AChildView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI

struct AChildView: View {
    @EnvironmentObject private var viewModel: ParentStateViewModel
    
    var body: some View {
        Form {
            Toggle("State Toggle", isOn: $viewModel.isOn)
            
            Button("State Sheet", action: viewModel.toggleSheetState)
            
            TextField("Input Any Text", text: $viewModel.text)
            
            NavigationLink("To Grand A Child View") {
                GrandAChildView()
                    .environmentObject(viewModel)
            }
        }
        .sheet(isPresented: $viewModel.isSheetOn) {
            Text("State Sheet Presented")
        }
    }
}

struct AChildView_Previews: PreviewProvider {
    static var previews: some View {
        AChildView()
            .environmentObject(ParentStateViewModel())
    }
}
