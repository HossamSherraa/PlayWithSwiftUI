//
//  FormAndSection.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 11/01/2021.
//

import SwiftUI

struct FormAndSection: View {
    var body: some View {
        VStack{
        Form{
            Section(header:Text("Geand Tow")){
                Text("Hello, World!")
                Color.red
                Toggle("fgdsfg", isOn: .constant(false))
            }
            
            Section{
                Text("Hello, World!")
                Color.red
                Toggle("fgdsfg", isOn: .constant(false))
            }
            Section{
                Text("Hello, World!")
                
                Toggle("fgdsfg", isOn: .constant(false))
            }
            
        }
            
            
        }
    }
}

struct FormAndSection_Previews: PreviewProvider {
    static var previews: some View {
        FormAndSection()
    }
}
