//
//  MasteringAnimatableModifier.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 16/01/2021.
//

import SwiftUI



struct TextAnimation : View {
    var  text : String = "Hossam"
    @State var scale = true
    var body: some View {
        HStack{
            ForEach(Array(text.enumerated()) , id : \.0){ (index , value) in
                Text(value.description)
                    .bold()
                    .textCase(.uppercase)
                    .font(.largeTitle)
                    .foregroundColor(.red)
                    .scaleEffect(scale ? 1  : 1.5 )
                    .animation(
                        Animation.easeIn
                            .delay(Double(index) * 0.02 )
                            .repeatForever()
                    )
                    
            }
            
        }
        .onTapGesture {
            scale.toggle()
        }
    }
}

struct MasteringAnimatableModifier: View {
    @State var number  : CGFloat = 0.0
    var body: some View {
            return Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 150, height: 150)
                
                
                .overlay(
                    Color.clear.modifier(PrecentageViewModifier(pct: self.number))
                        
                )
                .onTapGesture {
                    withAnimation(.easeIn(duration: 2)) {
                        
                        number = 1
                    }
                }
        }
}



struct PrecentageViewModifier : AnimatableModifier {
    var pct: CGFloat = 0
       
       var animatableData: CGFloat {
           get { pct }
           set { pct = newValue }
       }
       
       func body(content: Content) -> some View {
           content
               .overlay(ArcShape(pct: pct).foregroundColor(.red))
               .overlay(LabelView(pct: pct))
       }
       
       struct ArcShape: Shape {
           let pct: CGFloat
           
           func path(in rect: CGRect) -> Path {

               var p = Path()

               p.addArc(center: CGPoint(x: rect.width / 2.0, y:rect.height / 2.0),
                        radius: rect.height / 2.0 + 5.0,
                        startAngle: .degrees(0),
                        endAngle: .degrees(360.0 * Double(pct)), clockwise: false)

               return p.strokedPath(.init(lineWidth: 10, dash: [10, 60], dashPhase: 30))
           }
       }
       
       struct LabelView: View {
           let pct: CGFloat
           
           var body: some View {
               Text("\(Int(pct * 100)) %")
                   .font(.largeTitle)
                   .fontWeight(.bold)
                   .foregroundColor(.white)
           }
       }
}
