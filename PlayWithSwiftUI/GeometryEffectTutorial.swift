//
//  GeometryEffectTutorial.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 16/01/2021.
//

import SwiftUI

struct GeometryEffectTutorial: View {
    @State var offset : CGFloat = 20
    @State var skew : CGFloat = 0.5
    var body: some View {
        VStack{
            Text("Hello, World!1")
        Text("Hello, World!")
            .modifier(SkewedOffset2.init(offset: offset).ignoredByLayout())
            .animation(Animation.easeIn.repeatForever())
            .onTapGesture {
                offset = 40
                skew = -0.6
            }
        }
        
    }
}




struct GeometryEffectTutorial_Previews: PreviewProvider {
    static var previews: some View {
        GeometryEffectTutorial()
    }
}


struct SkewedOffset2: GeometryEffect {
    var offset: CGFloat
    
    
    var animatableData: CGFloat {
        get { offset }
        set {
            offset = newValue
        }
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        return ProjectionTransform(CGAffineTransform.init(translationX: offset, y: offset))
    }
}
