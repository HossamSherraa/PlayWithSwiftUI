//
//  DisclousreGroupView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 12/01/2021.
//

import SwiftUI

struct DisclousreGroupView: View {
    var body: some View {
        VStack{
            Divider()
                .padding()
        DisclosureGroup("Grand Tower") {
            Text("sub Grand Tower")
            
            Text("sub Grand Tower")
            }
        }
    }
}

struct DisclousreGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclousreGroupView()
    }
}
