//
//  SwiftUIView.swift
//  GameFarm2
//
//  Created by Apprenant 16 on 09/05/2023.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var afficherSheet = false
    //    @State var isPopup = false
    @State var showFirst = false
    @State var showSecond = false
    @State var showThird = false
    var body: some View {
        //        Circle()
        //            .frame(width:100, height: 100)
        //            .offset(x:500,y: 600)
        GeometryReader { proxy in
            
            //            Circle()
            //                .frame(width:100, height: 100)
            //                .offset(x:500,y: 600)
            ZStack {
                Group {
                Image("greengrass")
                    .resizable()
                    .scaledToFill()
                    .frame(width: proxy.size.width)
                    .edgesIgnoringSafeArea(.top)
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.cyan)
                    .frame(width: 480,height: 200)
                    .offset(x:0,y: -400)
                    Image("sun")
                        .resizable()
                        .frame(width: 130,height: 130)
                        .offset(x:-210,y: -420)
                    ZStack {
                        Image("sign")
                            .resizable()
                        
                            .frame(width:280,height: 160)
                            .offset(x:-30,y: 200)
                        
                    }
                    Text("La Ferme")
                        .font(.custom("Noteworthy-Bold",size:40))

                        .bold()
                        .font(.title)
                        .offset(x:-30,y: 170)
                        .foregroundColor(Color.white)
//                    RoundedRectangle(cornerRadius: 20)
//                        .foregroundColor(.blue)
//                        .frame(width: 480,height: 120)
//                        .offset(x:0,y: -380)
                    
                }
                Group {
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:20,y:-310)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:0,y:-320)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:120,y:-320)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:180,y:-330)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:-50,y:-330)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:-70,y:-320)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:-100,y:-320)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:-120,y:-330)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:-150,y:-320)
                    Image("tree")
                        .resizable()
                        .frame(width: 100,height: 100)
                        .offset(x:-210,y:-310)
                }
                Group{
                    Image("grange")
                        .resizable()
                        .frame(width: 260, height: 150)
                        .offset(x:80, y:-320)
                    Image("foin")
                        .resizable()
                        .frame(width:40,height: 40)
                        .offset(x:90,y:-255)
                    
                    Image("tonneau")
                        .resizable()
                        .frame(width:30,height: 40)
                        .offset(x:150,y:-260)
                    
                    Image("tonneau")
                        .resizable()
                        .frame(width:30,height: 40)
                        .offset(x:130,y:-260)
                    
                }
                Group {
                    Image("foin")
                        .resizable()
                        .frame(width:140,height: 140)
                        .offset(x:90, y: -20)
                    
                    Image("daffodil")
                        .resizable()
                        .frame(width:20, height: 40)
                        .offset(x:20,y:-100)
                    
                }
                .offset(x:0,y: -110)
                Group {
                    Image("nid")
                        .resizable()
                        .frame(width:130,height: 60)
                        .offset(x:90,y:-180)
                }
                //                Group {
                Animaux(img: "vache", text: "pouet", chiffre: 270, chiffre2: 200, chiffrex: -60, chiffrey: -20, showFirst: $showFirst)
                
                    .sheet(isPresented: $showFirst){
                        
                        Popup(img: "roses", img2: "Pain1", img3: "gazon", text: "La vache mange quoi ?", text2: "Roses", text3: "Pain",text4: ("Herbe"), padding: 70, width: 50, height: 50, width2: 50, height2: 50, width3: 50, height3: 50, cornerRadius: 40)
                    }
                
                Mouton(img: "mouton", text: "pouet", chiffre: 130, chiffre2: 70, chiffrex: -50, chiffrey: -90, showSecond : $showSecond)
                
                    .sheet(isPresented: $showSecond){
                        
                        Popup(img: "foin", img2: "bamboo", img3: "sapin", text: "Le mouton mange quoi ?", text2: "Du foin", text3: "Bambou",text4: ("Sapin"), padding: 70, width: 50, height: 50, width2: 50, height2: 50, width3: 50, height3: 50, cornerRadius: 40)
                    }
                
                Poule(img:"poule", text: "pouet", chiffre: 70, chiffre2: 60, chiffrex: 40, chiffrey: -105, showThird : $showThird)
                
                    .sheet(isPresented: $showThird){
                        
                        Popup(img: "epluchure",img2: "oignon", img3: "café", text: "La poule mange quoi ?", text2: "Epluchure", text3: "Oignon",text4: ("Café") ,padding: 70, width: 50, height: 50, width2: 50, height2: 50, width3: 50, height3: 50, cornerRadius: 40)
                        
                    }
                        Image("barriere")
                            .resizable()
                            .frame(width: 480, height: 120)
                            .offset(x:-10,y: 20)
                       
                    }

            }
        
        }
        
    }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
