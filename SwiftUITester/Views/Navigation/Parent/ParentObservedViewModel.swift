//
//  ParentObservedViewModel.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import Foundation

final class ParentObservedViewModel: ObservableObject {
    @Published var isOn: Bool = false
    @Published var isSheetOn: Bool = false
    @Published var text: String = ""
    
    func toggleSheetState() {
        isSheetOn.toggle()
    }
}
