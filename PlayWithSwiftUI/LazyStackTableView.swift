//
//  ContentView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 29/12/2020.
//

import SwiftUI

let data = ["String" , "Int" , "Bool" , "CGFloat" , "CGRECT" , "CGPeresia" , "CGPOY" , "String" , "Int" , "Bool" , "CGFloat" , "CGRECT" , "CGPeresia" , "CGPOY" , "String" , "Int" , "Bool" , "CGFloat" , "CGRECT" , "CGPeresia" , "CGPOY" ,"String" , "Int" , "Bool" , "CGFloat" , "CGRECT" , "CGPeresia" , "CGPOY" ,"String" , "Int" , "Bool" , "CGFloat" , "CGRECT" , "CGPeresia" , "CGPOY"]
struct StickyHeaderView: View {
    let text : String
    var body: some View{
        ZStack{
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.blue)
            
            Text(text)
                .foregroundColor(.green)
                .font(.title2)
            
        }
            .frame( height: 60, alignment: .center)
        .padding()
    }
}

struct TableViewCell : View {
    @State var isAppering : Bool = false
    var body: some View{
        ZStack{
        Rectangle()
            .foregroundColor(.red)
            .frame(height: 100, alignment: .center)
            .padding()
            Text("I'm a Cell")
                .foregroundColor(.white)
                .font(.title)
            
        }
        .scaleEffect(isAppering ? 1.3 : 1 )
        
        .onAppear(perform: {
            withAnimation(.easeIn(duration: 0.3), {
                isAppering.toggle()
            })
            
                
        })
        
        .onDisappear(perform: {
            isAppering.toggle()
        })
    }
}


struct TableViewInSwiftUI : View {
    var body: some View {
        ScrollView{
            LazyVStack(pinnedViews:[.sectionHeaders]){
        ForEach(0..<data.count) { index in
            Section(header:
                        StickyHeaderView(text: data[index])){
            TableViewCell()
        }
            
        }
        }
        
    }
}

struct Text_Previews: PreviewProvider {
    static var previews: some View {
        TableViewInSwiftUI()
            
            
    }
}
}

