//
//  AppStorage.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 22/01/2021.
//

import SwiftUI

struct AppStorageRT: View {
    @AppStorage("RTW") var rtw : String = "false"
    @Environment(\.isPresentedCC) var presented
    @State var  isPresented = false
    var body: some View {
        VStack{
            NavigationView{
               NavigationLink(
                destination: NewHeavyView(),
                label: {
                    NewHeavyView()
                })
            }
                
        }
        
        
    }
    
    
    
    
}


struct NewHeavyView : View {
    @Environment(\.isPresentedCC) var presented
    
    var body: some View{
        Text(presented).bold().font(.largeTitle)
    }
}

struct IsPresentedCC : EnvironmentKey {
    static var defaultValue: String = "fannlse"
    
    typealias Value = String
    
    
}


extension EnvironmentValues {
    var isPresentedCC : String{
        get {
            self[PlayWithSwiftUI.IsPresentedCC.self]
        }
        set{
            PlayWithSwiftUI.IsPresentedCC.defaultValue = newValue
        }
    }
}

struct AppStorage_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageRT()
            .environment(\.isPresentedCC, "Cfgsdgfhan44")
    }
}
