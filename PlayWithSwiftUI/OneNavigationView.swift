//
//  OneNavigationView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 28/01/2021.
//

import SwiftUI

struct User : Hashable{
    let name : String
}
struct OneNavigationView: View {
    @State var someValue : User?
    var body: some View {
        NavigationView{
            ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 80, maximum: 150))], content: {
                ForEach(0...100, id : \.self) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.randomColor)
                        .overlay(
                            Text(index.description)
                                .bold()
                        )
                        .frame( height: 60, alignment: .center)
                        .onTapGesture {
                            someValue = User(name: "Coming From " + index.description)
                        }
                }
            })
            .padding()
              
                NavigationLink("", destination: Text(someValue?.name ?? ""), tag: someValue ?? User.init(name: "non"), selection: $someValue)
                
            }
            .navigationBarHidden(true)
            
            
                
        }
        
        
            
        }
    }


struct OneNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        OneNavigationView()
    }
}
