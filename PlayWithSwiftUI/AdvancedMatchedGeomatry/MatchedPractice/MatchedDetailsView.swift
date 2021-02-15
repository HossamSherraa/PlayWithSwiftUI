//
//  MatchedDetailsView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 21/01/2021.
//

import SwiftUI

struct MatchedDetailsView: View {
   
    
    let profileImageName : String
    let title : String
    let subTitle : String
    @Binding var selectedIndex : Int
    @Binding var isPresented : Bool
    @State var isPaired : Bool = true
    
    let nmspace : Namespace.ID
    
    
    init( profileImageName : String = "image3" , title : String = "That's Title" , subTitle : String = "existing in thought or as an idea but not having a physical" , selectedIndex : Binding<Int> , nmspace : Namespace.ID , isPresented : Binding<Bool> ) {
        self.profileImageName = profileImageName
        self.title = title
        self.subTitle = subTitle
        self.nmspace = nmspace
        self._selectedIndex = selectedIndex
        self._isPresented = isPresented
    }
    
    var body: some View {
       
        VStack(spacing:0){
        ZStack{
         Image("turtlerock")
            .resizable()
            .clipShape(RoundedRectangle(cornerRadius: 20  , style: .continuous))
        VStack{
            HStack{
                Spacer()
        Button("Close") {
            
                
               
            withAnimation {
               
                isPaired.toggle()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    withAnimation {
                        isPresented.toggle()}
                }
            }
            
          
            
               
            
        }
        .buttonStyle(CloseButtonStyle())
        .padding()
                
            }
            
            HStack{
                Image(profileImageName)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame( height: 32, alignment: .center)
                    .matchedGeometryEffect(id: isPaired ? "profile\(String(describing: selectedIndex ))" : "unpaired", in: nmspace , isSource: false   )
                
                
                VStack(alignment: .leading){
                    Text(title)
                        .font(.callout)
                        .bold()
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .matchedGeometryEffect(id:  isPaired ? "title\(String(describing: selectedIndex ))" : "unpaired", in: nmspace , isSource: false )
                    
                    Text(subTitle )
                      
                        .font(.callout)
                        .foregroundColor(.white)
                        .matchedGeometryEffect(id:  isPaired ? "subTitle\(String(describing: selectedIndex ))" : "unpaired", in: nmspace , isSource: false  )
                }
                
            }
            
            Spacer()
            
        }
        
    
        }.onAppear(perform: {
            withAnimation {
                
                isPaired.toggle()
            }
        })
        .matchedGeometryEffect(id:isPaired ?  selectedIndex : 10001 , in: nmspace , isSource: false)
        .frame( minHeight: 200, idealHeight: 240, maxHeight: 300, alignment: .center)
       
            
            List(0..<20 , id : \.self){ index in
                MatchedListRow()
                
            }
            
        }
        
      
    
        
        
        
    }
    
    }

struct CloseButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12.0)
                .foregroundColor(Color.gray.opacity(0.5))
            Text("+")
                .font(.system(.title, design: .rounded))
                .offset(x: 1.0 , y: -2.0)
                .rotationEffect(.init(degrees: 45))
            
        }
        .frame(width: 40, height: 40, alignment: .center)
    }
}
