//
//  PassingNameSpace.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 19/01/2021.
//

import SwiftUI


/*
 TARGET :
startWith
 1- source = true , imageName = false , isNewViewPresented = false
 2- source = false ,imageName = false , isNewViewPresented = false
 
 Presenting
 1-source = false , imageName = true , isNewViewPresented = false , afterApperas isNewViewPrested = true
 
 toDimiss = isSource = true , imagename = false , isNewViewPreseted = false
 

 
  
 
 
 
 */
struct ExpandedView: View {
    @Namespace var nmspace
    @State var imageName : Bool = false
     @State var newViewPresnted = false
    var body: some View {
  
        ZStack(alignment:.center){
           
                Image("turtlerock")
                    .resizable()
                    
                    .matchedGeometryEffect(id: 0, in: nmspace , anchor : .center , isSource: !imageName)
                    .frame(width: 300, height: 300, alignment: .center)
                    
                    
            
           
            if imageName{
                Image("turtlerock")
                    .resizable()
                    
                    
                    .matchedGeometryEffect(id:  !newViewPresnted ? 0:100 ,in: nmspace,properties: .frame, anchor : .center , isSource: imageName )
                    .onAppear(perform: {
                        newViewPresnted = true
                    })
                  
                    
            
            }
            VStack{
            Button("Arto") {
                withAnimation(.none) {
                    
                    imageName.toggle()
                }
                
            
            }
            }
            
        }.animation(.easeIn)
        
    }
}

//struct HorizontalCirclesStackView : View {
//    @Binding var data : [String]
//    var nameSpace : Namespace.ID
//    var body: some View{
//
//    }
//}



struct PassingNameSpace_Previews: PreviewProvider {
    static var previews: some View {
        ExpandedView()
    }
}
