//
//  MatchedPracticContentView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 20/01/2021.
//

import SwiftUI

struct MatchedPracticContentView: View {
    
    @State var selectedItem : Int = 0
    @State var isPresented : Bool = false
    @Namespace var nmspace
    var body: some View {
        
        
       
        ZStack{
            
            if  isPresented{
                MatchedDetailsView(selectedIndex: $selectedItem, nmspace: nmspace , isPresented: $isPresented)
                    .zIndex(400)
                    .transition(AnyTransition.move(edge: .bottom))
                   
            }
           
                ScrollView{
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 180, maximum: 220 ) )], content: {
                        ForEach(0..<20) { index in
                            MatchedGridItem( index: index, namespace: nmspace, selectedIndex: $selectedItem, isPresented: $isPresented)
                               
                                .onTapGesture {
                                   
                                    withAnimation {
                                        isPresented = true
                                        
                                        self.selectedItem = index
                                    }
                                    
                                   
                                    
                                }
                            
                               
                               
                                
                        }
                        .padding()
                    })
                }.disabled(isPresented)
               
                
            
            
            
            
        
          
                
                
                
            }
        
        
        }
        
        
        
    
}

struct MatchedPracticContentView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedPracticContentView()
    }
}


