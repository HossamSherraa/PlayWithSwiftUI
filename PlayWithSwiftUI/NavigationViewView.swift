//
//  NavigationViewView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 12/01/2021.
//

import SwiftUI

struct NavigationViewView: View {
    var body: some View {
        NavigationView{
            NavigationLink.init(
                destination: Text("Destination"),
                label: {
                    Text("Navigate")
                })
           
        }
    }
}

struct NavigationViewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewView()
    }
}
