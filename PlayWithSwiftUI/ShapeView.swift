//
//  ShapeView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 13/01/2021.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        ZStack(alignment:.center){
            Color.gray
            Rectangle()
                .size(CGSize(width: 100.0, height: 100.0))
                .fill(BackgroundStyle())

            
                
               

                
        }
        .frame(width: 400, height: 400)
        
        
    }
    
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
