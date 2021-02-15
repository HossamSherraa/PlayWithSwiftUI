//
//  MatchedGeoReader.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 18/01/2021.
//

import SwiftUI

struct MatchedGeoReader: View {
    @Namespace var animation
    @State var isPresented = true
    var body: some View{
        VStack{
            if isPresented {
               
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.red)
                        .matchedGeometryEffect(id: "rect", in: animation , isSource: true)
                        .frame(width: 100, height: 100, alignment: .center)
                    Text("Play With Swift Boss")
                        .matchedGeometryEffect(id: "title", in: animation , isSource: true )
                
                
                            }
            
            VStack{
                Text("Play With Swift Boss")
                    .matchedGeometryEffect(id: "title", in: animation , isSource: false )
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100, alignment: .center)
                    .matchedGeometryEffect(id: "rect", in: animation , isSource:  false )
            }
            
               
            }
        
        .onTapGesture {
           
                isPresented.toggle()
            
        }
        .animation(.easeIn)
    }
}

struct MatchedGeoReader_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeoReader()
    }
}
