//
//  GroupBox.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 11/01/2021.
//

import SwiftUI

struct GroupBoxView: View {
    var body: some View {
        GroupBox(label : Text("That's Group BOX")){
            Text("Samr lds")
            Text("Samr lds")
            Text("Samr lds")
            Text("Samr lds")
        }
        
        
    }
}

struct CustomeGroupBoxStyle : GroupBoxStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .background(RoundedRectangle(cornerRadius: 20)
                            .padding(-20)
                            .foregroundColor(.red)
                            )
           
    }
}

struct GroupBox_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxView()
    }
}
