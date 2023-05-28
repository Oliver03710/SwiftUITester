//
//  BChildView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI

struct BChildView: View {
    @EnvironmentObject private var viewModel: ParentObservedViewModel
    
    var body: some View {
        Form {
            Toggle("Observed Toggle", isOn: $viewModel.isOn)
            
            Button("Observed Sheet", action: viewModel.toggleSheetState)
            
            TextField("Input Any Text", text: $viewModel.text)
            
            NavigationLink("To Grand B Child View") {
                GrandBChildView()
                    .environmentObject(viewModel)
            }
        }
        .sheet(isPresented: $viewModel.isSheetOn) {
            Text("Observed Sheet Presented")
        }
    }
}

struct BChildView_Previews: PreviewProvider {
    static var previews: some View {
        BChildView()
            .environmentObject(ParentObservedViewModel())
    }
}
