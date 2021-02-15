//
//  CardView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 27/12/2020.
//

import SwiftUI
struct Card : View {
    var index: Int
    var offset : CGSize
    var angel : Angle
    let color : Color
    let title : String
    init(cardDetails : CardDetails){
        index = cardDetails.index
        offset = cardDetails.offset
        angel = cardDetails.angleValue
        title = cardDetails.title
        color = cardDetails.color
    }
    var body: some View {
        
        ZStack{
            color
                .cornerRadius(20)
            Text(title)
                .foregroundColor(.white)
                .font(.title).bold()
        }
        .frame(width: 300, height: 400, alignment: .center)
        
    }
}


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Card(cardDetails: ModelData().cardsDetails[0])
    }
}
