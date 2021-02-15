//
//  PassingNamespace.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 20/01/2021.
//

import SwiftUI

struct PassingNamespace: View {
    @Namespace var nmspace
    @State var images = ["appletv.fill" , "applewatch.watchface" , "arrow.down.left.video.fill" , "iphone" , "earpods" , "homekit" , "homepod.fill" , "icloud.fill"]
    @State var selectedIndex: [Int] = []
    @State var isRemoving = false
    var body: some View {
        VStack{
            HStack{
                ForEach(0..<images.count ){ index in
                    RoundedRectangle(cornerRadius: 10)
                        .onTapGesture {
                           
                            
                                selectedIndex.remove(at: selectedIndex.count-1)
                            
                          
                        }
                        .aspectRatio(contentMode : .fit)
                        
                        
                        .frame( height: 50)
                        .matchedGeometryEffect(id: selectedIndex.contains(index) ? index : 1000, in: nmspace , isSource: false)
                       
                        .animation(.easeIn)
                        
                        
                        
                }
                
            }
            Spacer()
            
            ForEach(0..<images.count) { (index) in
                Image(systemName: images[index])
                    .resizable()
                    .foregroundColor(.blue)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                    .matchedGeometryEffect(id: index, in: nmspace , isSource : true )
                    .onTapGesture {
                       
                            self.selectedIndex.append(index)
                            
                        
                    }
                    .animation(.easeIn)
                
            }
            
        }
    }
}

struct PassingNamespace_Previews: PreviewProvider {
    static var previews: some View {
        PassingNamespace()
    }
}
