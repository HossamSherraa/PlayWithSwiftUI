//
//  OutlineGroupView.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 12/01/2021.
//

import SwiftUI

struct FileItem: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [FileItem]? = nil
    var description: String {
        switch children {
        case nil:
            return "📄 \(name)"
        case .some(let children):
            return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
        }
    }
}

let outLineData =
  [FileItem(name: "users", children:
    [FileItem(name: "user1234", children:
      [FileItem(name: "Photos", children:
        [FileItem(name: "photo001.jpg"),
         FileItem(name: "photo002.jpg")]),
       FileItem(name: "Movies", children:
         [FileItem(name: "movie001.mp4")]),
          FileItem(name: "Documents", children: [])
      ]),
     FileItem(name: "newuser", children:
       [FileItem(name: "Documents", children: [])
       ])
    ]) ,
   FileItem(name: "users2", children:
     [FileItem(name: "user1234", children:
       [FileItem(name: "Photos", children:
         [FileItem(name: "photo001.jpg"),
          FileItem(name: "photo002.jpg")]),
        FileItem(name: "Movies", children:
          [FileItem(name: "movie001.mp4")]),
           FileItem(name: "Documents", children: [])
       ]),
      FileItem(name: "newuser", children:
        [FileItem(name: "Documents", children: [])
        ])
     ])
   
   ,
   
   
   FileItem(name: "users3", children:
     [FileItem(name: "user1234", children:
       [FileItem(name: "Photos", children:
         [FileItem(name: "photo001.jpg"),
          FileItem(name: "photo002.jpg")]),
        FileItem(name: "Movies", children:
          [FileItem(name: "movie001.mp4")]),
           FileItem(name: "Documents", children: [])
       ]),
      FileItem(name: "newuser", children:
        [FileItem(name: "Documents", children: [])
        ])
     ])
  
  
  ]

struct OutlineGroupView: View {
    var body: some View {
        
        ForEach(outLineData) { element in
         
                OutlineGroup(element, children: \.children) { id in
                    Text(id.name)
                }
            }
        
        
        
    }
}

struct OutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupView()
    }
}
