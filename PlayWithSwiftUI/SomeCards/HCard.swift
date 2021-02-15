//
//  HCard.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 01/02/2021.
//

import SwiftUI

struct HCard: View {
    
    
    
    var body: some View{
        ZStack{
            Color.gray
        ScrollView.init(.horizontal, showsIndicators: false , content: {
            HStack{
            ForEach(0..<10) { _ in
                cardView
                    .frame(width: 250, height: 200, alignment: .center)
                    
                
            }
            }
        })
            
        }
    }
    
    
    
    
    var cardView: some View {
        ZStack(alignment:.topTrailing){
           RoundedRectangle(cornerRadius: 30, style: .continuous)
            .fill(Color.white)
                
            VStack(alignment:.trailing){
            HStack{
                Text("*** 4887")
                    .font(.system(.footnote, design: .rounded))
                    .foregroundColor(.gray)
                Image("mastercardLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50, alignment: .center)
                    .padding()
                
            }
                Spacer()
                HStack{
                VStack(alignment:.leading){
                    Text("Balance")
                        .font(.system(.headline, design: .rounded))
                        .opacity(0.2)
                    Text("14,045")
                        .font(.title)
                        .bold()
                }
                .padding(.leading)
                    Spacer()
                    Text("Debitcard")
                        .font(.caption)
                        .opacity(0.5)
                        .padding(.trailing)
                }
                .padding(.bottom)
                .frame(minWidth: 200, idealWidth: .infinity, maxWidth: .infinity )
                
            }
        }
       
        
    }
}

struct HCard_Previews: PreviewProvider {
    static var previews: some View {
        HCard()
            
    }
}
