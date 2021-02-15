//
//  List.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 10/01/2021.
//

import SwiftUI

struct ListDemo: View {
    static var data  =  [
        Item(title: "Computers", children: [
            Item(title: "Desktops", children: [
                Item(title: "iMac", children: nil),
                Item(title: "Mac Mini", children: nil),
                Item(title: "Mac Pro", children: nil)
            ]),
            Item(title: "Laptops", children: [
                Item(title: "MacBook Pro", children: nil),
                Item(title: "MacBook Air", children: nil),
            ])
        ]),
        Item(title: "Smartphones", children: [
            Item(title: "iPhone 11", children: nil),
            Item(title: "iPhone XR", children: nil),
            Item(title: "iPhone XS Max", children: nil),
            Item(title: "iPhone X", children: nil)
        ]),
        Item(title: "Tablets", children: [
                Item(title: "iPad Pro", children: nil),
                Item(title: "iPad Air", children: nil),
                Item(title: "iPad Mini", children: nil),
                Item(title: "Accessories", children: [
                    Item(title: "Magic Keyboard", children: nil),
                    Item(title: "Smart Keyboard", children: nil)
                ])]),
        Item(title: "Wearables", children: [
            Item(title: "Apple Watch Series 5", children: nil),
            Item(title: "Apple Watch Series 3", children: nil),
            Item(title: "Bands", children: [
                Item(title: "Sport Band", children: nil),
                Item(title: "Leather Band", children: nil),
                Item(title: "Milanese Band", children: nil)
            ])
        ])
    ]
    @State var selection  = Set<String>()
    var body: some View {
        VStack{
        EditButton()
            List{
                VStack{
                    Text("323232323")
                }
                
            }
           
            
            
        }
}
}

struct Item: Identifiable {
    let id = UUID()
    let title: String
    let children: [Item]?
}
struct List_Previews: PreviewProvider {
    static var previews: some View {
        ListDemo()
    }
}



extension List {
    func test<T:View>()->some View where Content==VStack<T> {
        return self
        
    }
}
