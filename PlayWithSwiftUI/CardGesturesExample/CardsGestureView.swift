//
//  ContentView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 21/12/2020.
//


//create a z stack
//append all cards
//if translationWidth > 0.8 Width card
//craete binding to state and normal state
//in all let state = normal
//if state = exceen 0.8 width translate
//normal state = it
//Create current index Item and when one swype , let index + 1
//
import SwiftUI


struct CardsGestureView: View {
    @EnvironmentObject var modelData : ModelData

    var body: some View {
        ZStack{
            Color(.magenta)
                .ignoresSafeArea()
            ForEach(modelData.cardsDetails, id: \.index) {
                Card(cardDetails: $0)
                    .offset($0.offset)
                    .rotationEffect($0.angleValue)
                    .animation(.spring())
            }
        }
        .gesture(
            DragGesture()
                .onChanged({ (dragValue) in
                    modelData.cardsDetails[modelData.currentFocusedIndex].offset = dragValue.translation
                    modelData.cardsDetails[modelData.currentFocusedIndex].angleValue = Angle(degrees: Double(dragValue.translation.width / 70))
                    if modelData.currentFocusedIndex > 0 {
                        modelData.cardsDetails[modelData.currentFocusedIndex-1].offset.height = -10
                    }
                    
                })
                .onEnded{ dragValue in
                    if dragValue.translation.width > 200 {
                        modelData.cardsDetails[modelData.currentFocusedIndex].offset.width = 800
                        if modelData.currentFocusedIndex > 0 {
                            modelData.currentFocusedIndex -= 1
                        }
                    }else {
                        modelData.cardsDetails[modelData.currentFocusedIndex].offset = .zero
                        modelData.cardsDetails[modelData.currentFocusedIndex].angleValue = .zero
                        if modelData.currentFocusedIndex > 0 {
                            modelData.cardsDetails[modelData.currentFocusedIndex-1].offset.height = 0
                        }
                    }
                }
        )
    }
    
   
}




