//
//  SearchBar.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/28.
//

import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication
            .shared
            .sendAction(
                #selector(UIResponder.resignFirstResponder),
                to: nil,
                from: nil,
                for: nil
            )
    }
}
#endif

struct SearchBar: View {
    @State private var text: String = ""
    @State private var isEditing: Bool = false
    @State private var isOn: Bool = false
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color.init(uiColor: .systemBackground))
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .padding(.leading, 16)
                    
                    TextField("Place Holder...", text: $text)
                        .onTapGesture { isEditing = true }
                    
                    if isEditing {
                        Button {
                            text = ""
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 16)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.bottom, 8)
                
                Rectangle()
                    .foregroundColor(.black)
                    .frame(height: 2)
                    .padding(.horizontal, 16)
            }
        }
        .onTapGesture {
            hideKeyboard()
            isEditing = false
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
