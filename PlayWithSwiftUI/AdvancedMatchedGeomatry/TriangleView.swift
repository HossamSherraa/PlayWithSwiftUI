//
//  TriangleView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 19/01/2021.
//

import SwiftUI

struct TriangleView: View {
    let direction: Direction
    let color: Color
    
    init(_ direction: Direction = .down, _ color: Color = .black) {
        self.direction = direction
        self.color = color
    }
    
    var body: some View {
        TriangleShape()
            .fill(color)
            .border(Color.black)
            .rotationEffect(Angle.degrees(direction.rawValue))
    }
    
    struct TriangleShape: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            
            path.move(to: .zero)
            path.addLine(to: CGPoint(x: rect.maxX, y: 0))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.midY))
            path.closeSubpath()
            
            return path
        }
    }
    
    enum Direction: Double {
        case down = 0
        case left = 90
        case up = 180
        case right = 270
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
