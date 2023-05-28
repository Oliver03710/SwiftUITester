//
//  GrandAChildView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI

struct GrandAChildView: View {
    @EnvironmentObject private var viewModel: ParentStateViewModel
    
    var body: some View {
        Form {
            Toggle("State Toggle", isOn: $viewModel.isOn)
            
            Button("State Sheet", action: viewModel.toggleSheetState)
            
            TextField("Input Any Text", text: $viewModel.text)
        }
        .sheet(isPresented: $viewModel.isSheetOn) {
            Text("State Sheet Presented")
        }
    }
}

struct GrandAChildView_Previews: PreviewProvider {
    static var previews: some View {
        GrandAChildView()
            .environmentObject(ParentStateViewModel())
    }
}
