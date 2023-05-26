//
//  MarketNavigationScreen.swift
//  MarketNavigationScreen
//
//  Created by Apprenant 16 on 04/05/2023.
//

import SwiftUI

struct MarketNavigationScreen: View {
    @AppStorage("listeDeCourse") var listeDeCourse: [Aliment] = []
    @State var animate : Bool = false
//    @State var jeux = "Click ici"
    var body: some View {
        GeometryReader { proxy in
            ZStack {
                
                VStack {
                    Image("texture")
                        .resizable()
                        .frame(width: proxy.size.width, height: proxy.size.height)
                    Spacer()
                }
                
                Image("market")
                    .resizable()
                    .frame(width: 140, height: 160)
                    .padding(.bottom,650)
                
                HStack {
                    ZStack {
                        ZStack {
                            Image("liste")
                                .resizable()
                                .frame(width: 250, height: 320)
                                .padding(.top,350)
                            
                            Text("Liste")
                                .font(.custom("Noteworthy-Bold",size:32))
                                .fontWeight(.bold)
                                .padding(.top, 120)
                        }
                        
                    }
                }
                
                VStack {
                    HStack {
                        BoxView(fruit: Aliment(nameAliment: "Cerise", imageAliment: "cherries"))
                        BoxView(fruit: Aliment(nameAliment: "Citron", imageAliment: "citron"))
                        BoxView(fruit: Aliment(nameAliment: "Raisin", imageAliment: "raisin") )
                    }
                    HStack {
                        BoxView(fruit: Aliment(nameAliment: "Orange", imageAliment: "orange"))
                        BoxView(fruit: Aliment(nameAliment: "Banane", imageAliment: "banane"))
                        BoxView(fruit: Aliment(nameAliment: "Pomme", imageAliment: "apple"))
                    }
                }
                .padding(.bottom, 220.0)
                
                
                //XMin 70 XMax 320
                //YMin 430 YMax 720
                Circle()
                    .frame(width: 2, height: 2)
                    .position(x: 70, y: 430)
                Circle()
                    .frame(width: 1, height: 2)
                    .position(x: 320, y: 720)
            }

//                            HStack {
//                                Button {
//                                    jeux = "Glisse les fruits sur la liste"
//                                } label: {
//                                    ZStack {
//
//                                        Image("board")
//                                            .resizable()
//                                            .frame(width: 400,height: 200)
//                                            .padding(.top,710)
//                                            .shadow(radius: 5)
//                                        Text(jeux)
//                                            .font(.custom("Wash Your Hand",size:28))
//                                            .foregroundColor(Color("greenlight"))
//                                            .bold()
//                                            .padding(.top,710)
//                                            .padding()
//
//                                    }
//
//                                }
//
//                            }
        }
        .edgesIgnoringSafeArea(.top)
       
        
    }
}

struct MarketNavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        MarketNavigationScreen()
    }
}

