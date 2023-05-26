//
//  ContentView.swift
//  ScrollingPages
//
//  Created by Apprenant 20 on 12/05/2023.
//

import SwiftUI

struct PopUpTutoView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .opacity(0.9)
            
            TabView {
                
                VStack {
                    Image("Market")
                        .resizable()
                        .frame(width: 200,height: 400)
                        .cornerRadius(30)
                        .padding(.bottom,0)
                    Text("Faites glisser les fruits")
                        .font(.custom("Noteworthy-Bold",size:22))
                        .foregroundColor(.black)
                    Text("et les légumes dans la liste")
                        .font(.custom("Noteworthy-Bold",size:22))        .foregroundColor(.black)
                        .padding(.bottom,30)
                    
                }
                VStack {
                    Image("garden")
                        .resizable()
                        .frame(width: 200,height: 400)
                        .cornerRadius(30)
                        .padding(.bottom,0)
                    Text("Faites glisser les fruits")
                        .font(.custom("Noteworthy-Bold",size:22))         .foregroundColor(.black)
                    Text("et légumes dans la cagette")
                        .font(.custom("Noteworthy-Bold",size:22)) .foregroundColor(.black)
                        .padding(.bottom,30)
    
                }
                VStack {
                    Image("farm")
                        .resizable()
                        .frame(width: 200,height: 400)
                        .cornerRadius(30)
                        .padding(.bottom,0)
                    Text("Cliquez sur les animaux")
                        .font(.custom("Noteworthy-Bold",size:22))
                        .foregroundColor(.black)
                    Text("et répondez aux questions")
                        .font(.custom("Noteworthy-Bold",size:22))
                        .foregroundColor(.black)
                        
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        
        .cornerRadius(30)
        .frame(width: 350, height: 550)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpTutoView()
    }
}
