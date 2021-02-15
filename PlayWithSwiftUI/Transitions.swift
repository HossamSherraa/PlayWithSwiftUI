//
//  Transitions.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 18/01/2021.
//

import SwiftUI

struct Transitions: View {
    @State var isPresented = false
    var body: some View {
        VStack{
        if isPresented {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.red)
                Text("I''m Presented View")
                    .bold().font(.largeTitle)
            }
            .frame(width: 300, height: 300, alignment: .center)
            .transition(
                AnyTransition.myOpacity.animation(.spring())
                    
                    
            )
          
            
           
        }
            Button("Button") {
               
                    
                    isPresented.toggle()
                
            }
        
        }
        
       
        
        
        
        
    }
    
}

struct Transitions_Previews: PreviewProvider {
    static var previews: some View {
        Transitions()
    }
}

extension AnyTransition {
    static var myOpacity: AnyTransition { get {
        AnyTransition.modifier(
            active: MyOpacityModifier(opacity: 1),
            identity: MyOpacityModifier(opacity: 0))
        }
    }
}

struct MyOpacityModifier: ViewModifier {
    let opacity: Double
    
    func body(content: Content) -> some View {
        content.modifier(Rotaion3DTransition.init(value: opacity))
    }
}




struct Rotaion3DTransition :  AnimatableModifier {
    
    // if val = 0 scale = 0 , degree= 70
    //if val = 1 scale = 1 degree = 0
    
    
    //0 - 0.8  = 0 * 90
    var value : Double
    var animatableData: Double {
        get {
            value
        }
        set{
            value = newValue
            
        }
    }
    func body(content: Content) -> some View {
        content
            
            .rotation3DEffect(
            .init(degrees: value * 90),
            axis: (x: 1.0, y: 0.0, z: 0.0)
            )
            .scaleEffect(CGFloat(abs(value - 1)))
        
    }
    
    
}
