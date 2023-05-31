//
//  GeoParentView.swift
//  SwiftUITester
//
//  Created by Oliver on 2023/05/31.
//

import SwiftUI

struct GeoParentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .foregroundColor(.cyan)
                .frame(height: 100)
                .overlay {
                    Text("Height: 100")
                }
            
            GeometryReader { proxy in
                GeoChildView()
                    .onAppear {
                        print("Size Width: \(proxy.size.width), Size Height: \(proxy.size.height)")
                        print("Global Width: \(proxy.frame(in: .global).width), Global Height: \(proxy.frame(in: .global).height)")
                        print("Local Width: \(proxy.frame(in: .local).width), Local Height: \(proxy.frame(in: .local).height)")
                    }
                    .position(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).maxY)
                    .background(Color.brown)
            }
//            .frame(height: 100)
//            .fixedSize(horizontal: false, vertical: true)
            .background(Color.yellow)
        }
    }
}

struct GeoParentView_Previews: PreviewProvider {
    static var previews: some View {
        GeoParentView()
    }
}
