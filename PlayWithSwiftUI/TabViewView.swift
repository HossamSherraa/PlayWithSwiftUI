//
//  TabViewView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 12/01/2021.
//

import SwiftUI

struct TabViewView: View {
    var body: some View {
        TabView {
            Text("The First Tab")
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("First")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Second")
                }
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "3.square.fill")
                    Text("Third")
                }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .font(.headline)
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView()
    }
}
