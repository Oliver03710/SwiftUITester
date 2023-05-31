//
//  GeoChildView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/31.
//

import SwiftUI

struct GeoChildView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text")
                .background(Color.green)
            
            HStack {
                Text("Text Text")
                    .background(Color.pink)
            }
            
            Rectangle()
                .foregroundColor(.indigo)
        }
        .background(Color.gray)
    }
}

struct GeoChildView_Previews: PreviewProvider {
    static var previews: some View {
        GeoChildView()
    }
}
