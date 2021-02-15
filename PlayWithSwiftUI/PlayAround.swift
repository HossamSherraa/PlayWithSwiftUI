//
//  PlayAround.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 25/01/2021.
//

import SwiftUI

struct PlayAround: View {
    @State var apperance = false

    var body: some View {
        HStack{
            ForEach(0...3, id: \.self) { (index)  in
                RoundedRectangle(cornerRadius: 25 , style: .continuous)
                    .foregroundColor(.blue)
                    .frame( height: 100, alignment: .center)
                    .offset (y: apperance ? 0 : 150)
                    .opacity(apperance ? 1 :0)
                    .animation(Animation.spring().delay(0.03 * Double( index)))
                
            }
        }.padding()
        .onAppear(perform: {
            Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (t) in
                apperance.toggle()
            }
            
        })
    }
}

struct PlayAround_Previews: PreviewProvider {
    static var previews: some View {
        PlayAround()
    }
}
