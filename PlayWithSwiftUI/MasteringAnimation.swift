//
//  MasteringAnimation.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 14/01/2021.
//

import SwiftUI

struct MasteringAnimation: View {
    @State var animationPlays : CGFloat = 0
    @State var textColor = Color.red
    @GestureState var gestureState : CGFloat = 0
    var body: some View {
        Text("Hello, World!")
            .foregroundColor(textColor)
            .offset(x: 100, y: -gestureState        )
            .animation(
                Animation.easeOut(duration: 0.3)
                    .repeatCount(30, autoreverses: true)
                    .speed(4.5)
                           
            )
            .gesture(
                DragGesture.init()
                    .updating($gestureState, body: { (newValue, oldValue, _ ) in
                        oldValue = newValue.translation.height
                    })
                    .onEnded({ (value) in
                        if value.translation.height > 120 {
                            textColor = .gray
                            
                        }
                    })
            )
    }
}

struct MasteringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        MasteringAnimation()
    }
}
