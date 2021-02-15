//
//  FoEachDemo.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 10/01/2021.
//

import SwiftUI

struct FoEachDemo: View {
  @State  var x = ["1" , "2" , "3"]
    var body: some View {
        VStack{
            EditButton()
            List{
        ForEach(x , id:\.self) {
            Text($0)
                .border(Color.black)
        }
        .onDelete(perform: { indexSet in
            
            x.remove(atOffsets: indexSet)
        })
                
            }
            
        }
    }
    
    
    
    
}

struct FoEachDemo_Previews: PreviewProvider {
    static var previews: some View {
        FoEachDemo()
    }
}
