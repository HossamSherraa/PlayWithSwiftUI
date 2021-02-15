//
//  MatchedListRow.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 22/01/2021.
//

import SwiftUI

struct MatchedListRow: View {
    var body: some View {
        HStack{
            Image(systemName: "applelogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50, alignment: .center)
            Spacer()
            Text("That's Jsut Fake Ttle")
                .bold()
                .font(.title3)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25.0 , style: .continuous)
                .foregroundColor(Color.gray.opacity(0.3))
        )
        
    }
}

struct MatchedListRow_Previews: PreviewProvider {
    static var previews: some View {
        MatchedListRow()
    }
}
