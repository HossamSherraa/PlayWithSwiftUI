//
//  MatchedGridItem.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 21/01/2021.
//

import SwiftUI

struct MatchedGridItem: View {
    let backgroundImage : String
    let profileImageName : String
    let title : String
    let subTitle : String
    let index : Int
    let nmspace : Namespace.ID
    @Binding var selectedIndex : Int
    @Binding var isPresented : Bool
    
    init(backgroundImage : String = "turtlerock", profileImageName : String = "image3" , title : String = "That's Title" , subTitle : String = " existing in thought or as an idea but not having a physical" , index : Int  , namespace : Namespace.ID , selectedIndex : Binding<Int> , isPresented : Binding<Bool> ) {
        self.backgroundImage = backgroundImage
        self.profileImageName = profileImageName
        self.title = title
        self.subTitle = subTitle
        self.index = index
        self.nmspace = namespace
        self._selectedIndex = selectedIndex
        self._isPresented = isPresented
    }
    
    
    
    var body: some View {
        ZStack(alignment:.topLeading){
            Image(backgroundImage)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20  , style: .continuous))
             
            VStack(alignment: .center){
                HStack(alignment: .center, content: {
                    Image(profileImageName)
                                       .resizable()
                                       .clipShape(Circle())
                                       .aspectRatio(contentMode: .fit)
                                       .frame( height: 32, alignment: .center)
                        
                        .matchedGeometryEffect(id: "profile\(String(describing: index))", in: nmspace , isSource: true )
                    
                    Text(title )
                        .font(.callout)
                        .bold()
                        .foregroundColor(.white)
                        .lineLimit(1)
                        .matchedGeometryEffect(id: "title\(String(describing: index))", in: nmspace  , isSource: true     )
                })
                Spacer()
                Text(subTitle )
                    .font(.callout)
                    .foregroundColor(.white)
                    .matchedGeometryEffect(id: "subTitle\(String(describing: index))", in: nmspace  , isSource: true    )
                    
            }
            .padding()
           
            
        }
        .frame( height: 250)
        .matchedGeometryEffect(id: index, in: nmspace   , isSource: true    )
        
        

        
        
    }
}

struct MatchedGridItem_Previews: PreviewProvider {
  @Namespace static var nmspace
    static var previews: some View {
        MatchedGridItem(backgroundImage: "turtlerock", profileImageName: "image3", title: "That's Title", subTitle: " existing in thought or as an idea but not having a physical" , index: 0, namespace: nmspace, selectedIndex: .constant(1), isPresented: .constant(false))
            .frame(width: 160)
    }
}
