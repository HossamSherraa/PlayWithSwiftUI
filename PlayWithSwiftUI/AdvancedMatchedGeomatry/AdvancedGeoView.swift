//
//  AdvancedGeoView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 19/01/2021.
//

import SwiftUI

struct AdvancedGeoView: View {
    @Namespace var ns
    @State var matched: Bool = false
    
    var body: some View {
        VStack(spacing: 50) {
            HStack(spacing: 30) {
                TriangleView(.down, .blue)
                    .matchedGeometryEffect(id: "id1", in: ns , anchor: .topLeading)
                    .frame(width: 150, height: 150)
                    .border(Color.gray)
                
                TriangleView(.right, .green)
                    .matchedGeometryEffect(id: matched ? "id1" : "", in: ns , properties: .position, anchor: .trailing, isSource: false)
                    .frame(width: 75, height: 75)
                    .border(Color.gray)
                
            }

            Toggle(isOn: $matched.animation(.easeInOut), label: { Text("Matched") }).frame(width: 140)

        }
    }
}

struct AdvancedGeoView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedGeoView()
    }
}
