//
//  MainNavigationScreen.swift
//  MainNavigationScreen
//
//  Created by Apprenant 16 on 04/05/2023.
//

import SwiftUI

struct MainNavigationScreen: View {
    
    @State private var animationAmount = 0.0
    @State private var animationAmount1 = 0.0
    @State private var animationAmount2 = 0.0
    @State private var navigateToMarket = false
    @State private var navigateToPelle = false
    @State private var navigateToAnimaux = false
    
    
    @State var imageBackground: String
    @State var imageButton: String
    @State var ColorCircle: Color
    
    var body: some View {
        NavigationStack {
            
            
            GeometryReader { proxy in
                ZStack {
                    
                    Image(imageBackground)
                        .resizable()
                        .scaledToFill()
                        .frame(width: proxy.size.width)
                        .edgesIgnoringSafeArea(.top)
                    
                    Button {
                        switch imageBackground {
                        case "snow":
                            imageBackground = "spring"
                            imageButton = "cloud"
                            ColorCircle = Color.green
                        case "spring":
                            imageBackground = "summer"
                            imageButton = "sun"
                            ColorCircle = Color.yellow
                        case "summer":
                            imageBackground = "autumn"
                            imageButton = "rain"
                            ColorCircle = Color.orange
                        case "autumn":
                            imageBackground = "snow"
                            imageButton = "Frozen"
                            ColorCircle = Color.cyan
                        default:
                            break
                        }
                        
                        
                    } label: {
                        
                        Image(imageButton)
                            .resizable()
                            .scaledToFill()
                        
                        
                    }
                    .frame(width: 110, height: 110)
                    .position(CGPoint(x: 195, y: 80))
                    .shadow(radius:10)
                    .zIndex(1)
                    
                    
                    
                    VStack {
                        
                        
                        ZStack {
                            
                            Circle()
                                .frame(width: 130, height: 130)
                                .foregroundColor(ColorCircle)
                            NavigationLink(isActive: $navigateToMarket) {
                                MarketNavigationScreen ()
                            } label: {
                                Button{
                                    
                                    withAnimation {
                                        animationAmount += 360
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                                            navigateToMarket = true
                                            
                                        }}
                                    
                                } label: {
                                    Image("panier")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .clipShape(Circle())
                                        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0 ,y : 1, z : 0))
                                }
                                
                            }
                            
                        }
                        .padding(.trailing)
                        ZStack {
                            
                            Circle()
                                .frame(width: 130, height: 130)
                                .foregroundColor(ColorCircle)
                            NavigationLink(isActive: $navigateToPelle) {
                                GardenNavigationScreen()
                                Text("")
                            } label: {
                                Button {
                                    withAnimation {
                                        animationAmount1 += 360
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                                            navigateToPelle = true
                                            
                                        }}
                                } label: {
                                    
                                    Image("pelle")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .clipShape(Circle())
                                        .rotation3DEffect(.degrees(animationAmount1), axis: (x: 0 ,y : 1, z : 0))
                                }
                            }
                        }
                        
                        .padding(.trailing)
                        ZStack {
                            
                            Circle()
                                .frame(width: 130, height: 130)
                                .foregroundColor(ColorCircle)
                            NavigationLink(isActive: $navigateToAnimaux) {
                                SwiftUIView()
                            } label: {
                                Button{
                                    withAnimation {
                                        animationAmount2 += 360
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                                            navigateToAnimaux = true
                                            
                                        }}
                                } label: {
                                    Image("animaux")
                                        .resizable()
                                        .frame(width: 120, height: 120)
                                        .clipShape(Circle())
                                        .rotation3DEffect(.degrees(animationAmount2), axis: (x: 0 ,y : 1, z : 0))
                                }
                            }
                        }
                        .padding(.trailing)
                    }
                    
                    .padding(.leading, 250)
                }
                
            }
            
            
        }
        
    }
}


struct MainNavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigationScreen(imageBackground: "snow", imageButton: "Frozen", ColorCircle: Color.cyan)
    }
}
