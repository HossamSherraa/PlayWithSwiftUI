//
//  ScrollViewDemo.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 10/01/2021.
//

import SwiftUI


struct ScrollViewOffsetData : Equatable {
    var scrollOffsetY : CGFloat
}

struct ScrollViewOffsetKey : PreferenceKey {
    static var defaultValue: ScrollViewOffsetData = .init(scrollOffsetY: 0)
    
    static func reduce(value: inout ScrollViewOffsetData, nextValue: () -> ScrollViewOffsetData) {
        value = nextValue()
    }
    
    typealias Value = ScrollViewOffsetData
    
}
struct ScrollWithOffsetView<Content>: View where Content : View {
    let content : Content
    let onOffsetChange : (CGFloat)->Void
    init(
        @ViewBuilder content :  ()->Content , onOffsetChange : @escaping (CGFloat)->Void ) {
        self.content = content()
        self.onOffsetChange = onOffsetChange
    }
    var body: some View{
        ScrollView(.vertical, showsIndicators: false , content: {
          GeometryReader{
                    Color.clear
                        .preference(key: ScrollViewOffsetKey.self, value: ScrollViewOffsetData.init(scrollOffsetY: $0.frame(in: CoordinateSpace.named("scrollView")).origin.y))
                }
            content
        })
        .onPreferenceChange(ScrollViewOffsetKey.self, perform: { value in
            onOffsetChange(value.scrollOffsetY * -1)
        })
        .background(VStack{
            Color.green
            Color.blue.background(Text(Date() , style: .offset))
            Toggle(isOn: .constant(true), label: {
                Text("Label")
            })
            
            
        })
            
        }
    }


struct ScrollViewDemo : View {
    var body: some View {
        ScrollWithOffsetView {
            Text( "index.description")
                Text("index.description")
            
        } onOffsetChange: { (value) in
            print(value)
        }
        .ignoresSafeArea()

    }
}


struct ScrollViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewDemo()
    }
}

extension Color {
    static var randomColor : Color {
        let colors = [Color.red , Color.blue , Color.yellow , Color.gray , Color.green , Color.pink  , Color.purple]
        return colors[Int.random(in: 0..<colors.count)]
    }
}
