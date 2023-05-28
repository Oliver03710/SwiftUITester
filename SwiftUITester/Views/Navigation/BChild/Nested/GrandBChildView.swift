//
//  GrandBChildView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI

struct GrandBChildView: View {
    @EnvironmentObject private var viewModel: ParentObservedViewModel
    
    var body: some View {
        Form {
            Toggle("Observed Toggle", isOn: $viewModel.isOn)
            
            Button("Observed Sheet", action: viewModel.toggleSheetState)
            
            TextField("Input Any Text", text: $viewModel.text)
        }
        .sheet(isPresented: $viewModel.isSheetOn) {
            Text("Observed Sheet Presented")
        }
    }
}

struct GrandBChildView_Previews: PreviewProvider {
    static var previews: some View {
        GrandBChildView()
    }
}
