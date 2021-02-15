//
//  MasteringTransitions.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 14/01/2021.
//

import SwiftUI

struct MasteringTransitions: View {
    @State var numberOfPoints = 100
    @State var scale = 1
    var body: some View {
        Points(numberOfPoint:numberOfPoints, scale: scale)
        .padding()
        .onTapGesture {
            numberOfPoints += 100
            scale += 1
        }
        .animation(.easeIn)
        
        
    }
    
    
    
    
}


struct Points : Shape  {
    var numberOfPoint : Int
    var scale : Int
 var animatableData : AnimatablePair<Double , Double> {
        get {AnimatablePair(Double(numberOfPoint), Double(scale))}
        set {
            self.numberOfPoint = Int(newValue.first)
            self.scale = Int(newValue.second)
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path.init()
            path.move(to: rect.origin)
        path.addLine(to:.init(x: rect.midX, y: rect.midY))
        path.addLine(to: .init(x: numberOfPoint, y: numberOfPoint))
        path.closeSubpath()
        path.size(CGSize(width: 50 * scale, height: 50 * scale))
        return path
    }
    
}

struct MasteringTransitions_Previews: PreviewProvider {
    static var previews: some View {
        MasteringTransitions()
    }
}
