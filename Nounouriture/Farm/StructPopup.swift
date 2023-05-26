//
//  StructPopup.swift
//  GameFarm2
//
//  Created by Apprenant 16 on 10/05/2023.
//


import SwiftUI
struct Popup : View {
    
    
    
    
   @State var img : String
   @State var img2 : String
@State var img3 : String
    var text: String
    var text2: String
    var text3: String
    var text4: String
    var padding : CGFloat
    var width : CGFloat
    var height : CGFloat
    var width2 : CGFloat
    var height2 : CGFloat
    var width3 : CGFloat
    var height3 : CGFloat
    var cornerRadius : CGFloat
    var body : some View {
        
        ZStack {
            Image("wood")
            
            VStack {
                Image("panierlegume")
                    .resizable()
                    .frame(width: 140,height: 90)
                    .padding(.top)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.white)
                        .frame(width: 360,height: 90)
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(.brown)
                        .frame(width: 340,height: 70)
                    
                    
                    Text(text)
                        .font(.custom("Noteworthy-Bold",size:30))

                        .bold()
                        .padding(padding)
                        .foregroundColor(.white)
                        .shadow(radius: 100)
                }
                
                HStack {
                    
                    VStack {
                        ZStack {
                            Circle()
                                .frame(width: 120, height: 120)
                                .foregroundColor(.white)
                            Circle()
                                .frame(width: 110, height: 110)
                                .foregroundColor(.green)
                            VStack {
                                Button {
                                    if img == "epluchure" {
                                        img = "check"
                                    }
                                    else if img == "foin"{
                                        img = "check"
                                    }
                                    else if img == "roses"{
                                        img = "wrong"
                                    }
                                    
                                    
                                }
                                label: {
                                    Image(img)
                                        .resizable()
                                        .frame(width: width, height: height)
                                }
                                    Text(text2)
                                    .font(.custom("Noteworthy-Bold",size:18))
                                        .presentationDetents([.medium])
                                        .foregroundColor(.black)
                                    //                            .presentationBackground(.blue)
                                        .presentationCornerRadius (cornerRadius)
                                }
                            }
                        }
                        
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(.green)
                                
                                VStack {
                                    Button {
                                        if img2 == "bamboo" {
                                           img2 = "wrong"
                                        }
                                        else if img2 == "oignon" {
                                            img2 = "wrong"
                                        }
                                        
                                        else if img2 == "Pain1" {
                                            img2 = "wrong"
                                        }
                                            
                                    } label: {
                                        
                                        
                                        Image(img2)
                                            .resizable()
                                            .frame(width: width2, height: height2)
                                    }
                                    Text(text3)
                                        .font(.custom("Noteworthy-Bold",size:20))
                                }
                            }
                        }
                        
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 120, height: 120)
                                    .foregroundColor(.white)
                                
                                Circle()
                                    .frame(width: 110, height: 110)
                                    .foregroundColor(.green)
                                VStack {
                                    Button {
                                        if img3 == "café" {
                                           img3 = "wrong"
                                        }
                                        else if img3 == "gazon" {
                                            img3 = "check"
                                        }
                                        
                                        else if img3 == "sapin" {
                                            img3 = "wrong"
                                        }
                                        
                                    } label: {
                                        Image(img3)
                                        
                                            .resizable()
                                            .frame(width: width3, height: height3)
                                    }
                                    Text(text4)
                                        .font(.custom("Noteworthy-Bold",size:20))
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    

