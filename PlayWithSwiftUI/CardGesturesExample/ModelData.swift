//
//  ModelData.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 27/12/2020.
//

import Combine
import SwiftUI
struct CardDetails {
    var angleValue : Angle  = .zero
    var offset : CGSize = .zero
    var index : Int
    var color : Color
    var title : String
    
}
class ModelData : ObservableObject {
    @Published var cardsDetails : [CardDetails] = [
        .init( index: 0, color: .blue, title: " Title1"),
        .init( index: 1, color: .yellow, title: " Title2"),
        .init( index: 2, color: .green, title: "First55Title"),
        .init( index: 3, color: .orange, title: "4 Title"),
    ]
    
    @Published var currentFocusedIndex = 3
}
