//
//  Understand3DEffect.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 19/01/2021.
//

import SwiftUI

struct Understand3DEffect: View {
    @State var degree : Double = .zero
    @State var xValue : CGFloat = 0
    @State var yValue : CGFloat = 0
    @State var zValue : CGFloat = 0
    
    
    var body: some View {
        VStack(alignment: .center){
            Rectangle()
             .foregroundColor(.red)
                .frame(width: 400, height: 400, alignment: .center)
             .rotation3DEffect(
                 .init(degrees: degree),
                 axis: (x: xValue, y: yValue
                        , z: zValue))


        Spacer()
        
        VStack{
            Slider(value: $degree, in: 0...360)
            Text( self.degree.description + " Degree")
            
        }
        VStack{
            Slider(value: $xValue, in: 0...890)
            Text( self.xValue.description + " XValue")
            
        }
        VStack{
            Slider(value: $yValue, in: 0...890)
            Text( self.yValue.description + " YValue")
            
        }
        VStack{
            Slider(value: $zValue, in: 0...890)
            Text( self.zValue.description + " ZValue")
            
        }
            
            Spacer()
    }
        .padding()
        .animation(.interactiveSpring())
    }
    
}

struct Understand3DEffect_Previews: PreviewProvider {
    static var previews: some View {
        Understand3DEffect()
    }
}
