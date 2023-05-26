//
//  ContentView.swift
//  GardenNavigationScreen
//
//  Created by Apprenant 20 on 04/05/2023.
//

import SwiftUI
struct GardenNavigationScreen: View {
    @State var vegetables = false
    //    @State var textDisplayOnClick: String
    var body: some View {
        GeometryReader { proxy in
            
            
            ZStack{
                Image("greengrass")
                    .resizable()
                    .frame(width: proxy.size.width, height: proxy.size.height)
                
                Group {
                    ImgExtract(withe: 150, height: 150, x: 300, y: 665, img: "crate", name: "", draggable: false)
                    }
                    
                
                Group{
                    ImgExtract(withe: 120, height: 120, x:  70, y: 120, img: "tree", name: "", draggable: false)
                    ImgExtract(withe: 120, height: 120, x:  195, y: 120, img: "tree", name: "", draggable: false)
                    ImgExtract(withe: 120, height: 120, x:  330, y: 120, img: "tree", name: "", draggable: false)
                }
                Group{
                    ImgExtract(withe: 70, height: 70, x: 40.0, y: 260, img: "dirt", name: "", draggable: false)
                    ImgExtract(withe: 70, height: 70, x: 350.0, y: 320, img: "dirt", name: "", draggable: false)
                }
                Group{
                    
                    ImgExtract(withe: 40, height: 40, x:  56.0, y: 264, img: "daffodil", name: "", draggable: false)
                    ImgExtract(withe: 40, height: 40, x: 360.0, y: 320, img: "daffodil", name: "", draggable: false)
                }
                Group{
                    
                    ImgExtract(withe: 130, height: 130, x: 130, y: 230, img: "plants", name: "", draggable: false)
                    ImgExtract(withe: 130, height: 130, x: 270, y: 230, img: "plants", name: "", draggable: false)
                }
                Group{
                    ImgExtract(withe: 140, height: 140, x: 110, y: 330, img: "square", name: "", draggable: false)
                    ImgExtract(withe: 150, height: 150, x: 180, y: 400, img: "square", name: "", draggable: false)
                    ImgExtract(withe: 160, height: 160, x: 80, y: 500, img: "square", name: "", draggable: false)
                    ImgExtract(withe: 130, height: 130, x: 260, y: 300, img: "square", name: "", draggable: false)
                    ImgExtract(withe: 150, height: 150, x: 300, y: 430, img: "square", name: "", draggable: false)
                }
                
                Group{  //Legumes
                    Group{
                        ImgExtract(withe: 70, height: 70, x: 90, y: 453, img: "tomato", name: "Des Tomates")
                        ImgExtract(withe: 70, height: 70, x: 70, y: 475, img: "tomato", name: "Des Tomates")
                    }
                    Group{
                        ImgExtract(withe: 30, height: 30, x: 250, y: 270, img: "carrot", name: "Une Carotte")
                        ImgExtract(withe: 30, height: 30, x: 290, y: 270, img: "carrot", name: "Une Carotte")
                        ImgExtract(withe: 30, height: 30, x: 220, y: 290, img: "carrot", name: "Une Carotte")
                        ImgExtract(withe: 30, height: 30, x: 260, y: 295, img: "carrot", name: "Une Carotte")
                    }
                    Group{
                        
                        ImgExtract(withe: 30, height: 30, x: 150, y: 398, img: "radish", name: "Un Radis")
                        ImgExtract(withe: 30, height: 30, x: 190, y: 400, img: "radish", name: "Un Radis")
                        ImgExtract(withe: 30, height: 30, x: 215, y: 380, img: "radish", name: "Un Radis")
                        ImgExtract(withe: 30, height: 30, x: 180, y: 380, img: "radish", name: "Un Radis")
                        
                    }
                    Group{
                        ImgExtract(withe: 50, height: 50, x: 270, y: 420, img: "pepper", name: "Un Poivron")
                        
                        ImgExtract(withe: 50, height: 50, x: 310, y: 420, img: "pepper", name: "Un Poivron")
                        
                        ImgExtract(withe: 50, height: 50, x: 330, y: 410, img: "pepper", name: "Un Poivron")
                        
                        ImgExtract(withe: 50, height: 50, x: 290, y: 400, img: "pepper", name: "Un Poivron")
                        
                    }
                    Group{
                        ImgExtract(withe: 70, height: 70, x: 110, y: 310, img: "cabbage", name: "La Salade")
                    }
                }
                Group{ //fruits
                    Group{
                        ImgExtract(withe: 30, height: 30, x: 310, y: 125, img: "apple", name: "Une Pomme")
                        ImgExtract(withe: 30, height: 30, x: 320, y: 90, img: "apple", name: "Une Pomme")
                        ImgExtract(withe: 30, height: 30, x: 350, y: 120, img: "apple", name: "Une Pomme")
                        
                        
                        Group{
                            ImgExtract(withe: 40, height: 40, x: 210, y: 120, img: "cherries", name: "Une Cerise")
                            ImgExtract(withe: 40, height: 40, x: 190, y: 90, img: "cherries", name: "Une Cerise")
                            ImgExtract(withe: 40, height: 40, x: 170, y: 120, img: "cherries", name: "Une Cerise")
                           
                        }
                        Group{
                            ImgExtract(withe: 30, height: 40, x: 95, y: 125, img: "pear", name: "Une Poire")
                            ImgExtract(withe: 30, height: 40, x: 50, y: 120, img: "pear", name: "Une Poire")
                            ImgExtract(withe: 30, height: 40, x: 70, y: 90, img: "pear", name: "Une Poire")
                           
                            
                        }
                        ZStack {
                            Image("sign")
                                .resizable()
                                .frame(width: 150, height: 150)
                            .position(x: 100, y: 650)
                            Text("Potager")
                                .font(.custom("Noteworthy-Bold",size:32))
                                .bold()
                            .position(x: 100, y: 630)
                        }
                    }
                   
                }
              
            }
            
            
        }
        .edgesIgnoringSafeArea(.top)
    }}

struct  GardenNavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        GardenNavigationScreen()
    }
}

struct ImgExtract: View {
    var withe: CGFloat
    var height: CGFloat
    var x: CGFloat
    var y: CGFloat
    var img: String
    var name: String
   
    var draggable = true
    @State var position = CGSize.zero
    @State var vegetables = false
    var body: some View {
        
        
        if draggable {


            Image(img)
                .resizable()
                .frame(width: withe, height: height)
                .position(x: x, y: y)
                .zIndex(1)
                .offset(position)
                .gesture(
                    DragGesture()
                        .onChanged { position = $0.translation }
                        .onEnded { _ in
                            let fruitX = position.width
                            let fruitY = position.height
                            
                            let totalPosX = x + fruitX
                            let totalPosY = y + fruitY
                            
                            if totalPosX > 240 && totalPosX < 373 && totalPosY > 600 && totalPosY < 770 {
                                
                                vegetables = true
                            } else {
                                withAnimation(.spring()){
                                    position = .zero
                                    
                                }
                            }
                        }
                )
                .overlay{
                    VStack{
                        if vegetables{
                            ZStack{
                                RoundedRectangle(cornerRadius: 20, style:.continuous)
                                    .fill(.ultraThinMaterial)
                                    .frame(width: 250, height: 115)
                                VStack {
                                    Image(img)
                                        .resizable()
                                        .frame(width: withe, height: height)
                                    HStack {
                                        Text("\(name) est ajouté au")
                                            .bold()
                                            
                                        Image("basket")
                                            .resizable()
                                            .frame(width: 35, height: 35)
                                        
                                    }
                                }
                            }
                            .position(x: 250, y: 550)
                            .zIndex(4)
                            .onAppear{
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                    withAnimation{
                                        vegetables = false
                                        
                                    }
                                }
                            }
                            
                        }
                        
                    }
                    
                }
//            let fruitX = position.width
//            let fruitY = position.height
//
//            let totalPosX = x + fruitX
//            let totalPosY = y + fruitY
            
        }
        else {
            Image(img)
                .resizable()
                .frame(width: withe, height: height)
                .position(x: x, y: y)
        }
        
    }
                        
}

