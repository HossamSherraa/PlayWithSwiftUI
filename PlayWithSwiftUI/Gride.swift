//
//  Gride.swift
//  PlayWithSwiftUI
//
//  Created by Hossam on 07/01/2021.
//

import SwiftUI

var data4 = ["Stgdfgdfsg dsfgs sdfg ring" , "InaksDAKdkas KASKDASkd kaDKAsdk dsfasdkf skdfadksf ksafkadskfaksdfkasdkf ksadfkasdfkadskf k 435 t" , "Blgf ldfglsdfgl lfglsfdg lflgsdflg lsdfglsfdgl sflgslfdg lflgl sglfdfslg ldsfgldsfgl ldsfgldsflg ool" , "CGFlfglds dsfgloat" , "CGRllfglsdf ldsfgldsfg ldfsgldfs ldsfgl dsflgldfs lsdfgl dfslg ldsfgl dsflg lsdg ECT" , "Clgflsdgl dfslgsdflg lsdflgsdgl sdlfg ldfsgsdf GPeresia" , "CGllflghdfl fglh dflhPOY" , "dfasdl asdflasdlf lasflasdf laslfalsdf lasdlfalsflasdfladlsfals alsdfladsf laslfldsfladsfl asdlfaldsflas ladsfladslfasldflasd lasdfladslfalsdfl ladsfladsfl lasdlfadlfadlsfl aldsfladsfl lasflalsfldsflasd ladsfladslfadlsf laslfaslf " , "sdfas ladslfadlsf lsadlfadsl lasdflasdfl asldflasdfl lasdflasdfl " , "dfgdsf gdfgdfsgdsf;g ds;gdfsg;s ;gdflsgldfs ldsfgldfsgl ldsfgldfsgls" , "dsfgfdslgewlrqwelr lqwrlqwerl lqerlqwrll" , "This is wrong. The .backgound(Color.red) is the background of the frame's view, but not the background of the VStack that is in the frame view. (The reason for this is explained in the WWDC videos :P). If you put .background(Color.green) before the .frame you will see the VStack still has a width that fits its content while the frame has a red background...When you put .frame(...), it's not editing the VStack, it's actually creating another view. – Jake J" , "To make the VStack the width of the actual screen you can use UIScreen.main.bounds.width when setting the frame instead of using a GeometryReader, but I imagine you likely wanted the width of the parent view." , "frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:) method"]

struct WaterFallGridItem : View {
    let text : String
    let id : Int
    var maxY : CGFloat = 0
   
    var body: some View {
       
        ZStack{
            Color.gray
                .padding(-2)
                .cornerRadius(3)
            VStack{
                Image("turtlerock")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset( y: 20.0)
                    .scaleEffect(1.2)
                    
                   
    
                    Text(text)
                        .font(.title3)
                        .bold()
                        .padding()
                        .background(
                            Color(#colorLiteral(red: 0.9808551669, green: 0.9581345916, blue: 0.94071275, alpha: 1))
                                .cornerRadius(10)
                                
                                
                        )
                        .layoutPriority(1)
                }
            .background(
                GeometryReader{ geo in
                    
                    return Color.clear
                        .preference(key: WaterFallGridKey.self, value: [WaterFallGridData(size: geo.size)])

                    
                }
            )
            .frame(width: 220)
            .clipped()
            
                
            
        
        
        }
                
        }
}
    



struct WaterFallGrid : View {
    @State var sizes : [CGSize] = []
    let gridItems = [
        GridItem(.fixed(220), spacing: 10 , alignment: .top),
        GridItem(.fixed(220), spacing: 10 , alignment: .top),
        GridItem(.fixed(220), spacing: 10 , alignment: .top)]
    var body: some View {
    
        return ScrollView{
        
            LazyHStack(alignment:.top){
               
                LazyVStack{
                    WaterFallGridItem(text: "sdsdf asdfasdlsdfgldfsgldsflgdsff sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf salglsgldfslgdfslgldfsgldfsgldsflgsdflgdslgdlsfgldfsgldfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdldsfgdfsgdfsgldsfgdslfgfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                }
                LazyVStack{
                    WaterFallGridItem(text: "sdsdf asdfasdldfgldsfgldsfglf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf safdsgldsfgldsfglsdfgldsfdfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdfdglasglfdslgsdfgl asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf alsdlfaslfdasfladslfdsalfadsfl ldsaf lasflasdflas dlfasdlf alsdfal sdfalsdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdllfsdlgdfslgdflsglsfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdldfsgldsgdlsfgf sadfads fsdafadsfdsfdsaf ", id: 1)
                }
                LazyVStack{
                    WaterFallGridItem(text: "sdsdf asdfasdf ldfgsdlgdsfgldsfgsadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf lfgsdfgldsgsadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf lfdgdslfgdfslgsadfads fsdafadsfdsfdsaf dfasdl asdflasdlf lasflasdf laslfalsdf lasdlfalsflasdfladlsfals alsdfladsf laslfldsfladsfl asdlfaldsflas ladsfladslfasldflasd lasdfladslfalsdfl ladsfladsfl lasdlfadlfadlsfl aldsfladsfl lasflalsfldsflasd ladsfladslfadlsf laslfaslf dfasdl asdflasdlf lasflasdf laslfalsdf lasdlfalsflasdfladlsfals alsdfladsf laslfldsfladsfl asdlfaldsflas ladsfladslfasldflasd lasdfladslfalsdfl ladsfladsfl lasdlfadlfadlsfl aldsfladsfl lasflalsfldsflasd  ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfalfglsdfgdfssdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfalfgslfgfsglsdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                }
                LazyVStack{
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                    WaterFallGridItem(text: "sdsdf asdfasdf sadfads fsdafadsfdsfdsaf ", id: 1)
                }
            }
        
        
        
        }
       
        
    }
    
    

    }
    
    





struct WaterFallGridData : Equatable {
    let size : CGSize
}
struct WaterFallGridKey : PreferenceKey {
    static func reduce(value: inout [WaterFallGridData], nextValue: () -> [WaterFallGridData]) {
        value.append(contentsOf: nextValue())
    }
    
    typealias Value = [WaterFallGridData]
    static var defaultValue: [WaterFallGridData] = []
    
}


struct WaterFallPreview : PreviewProvider {
    static var previews: some View {
        WaterFallGrid()
            
    }
    
    
}
