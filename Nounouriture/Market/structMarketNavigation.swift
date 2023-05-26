//
//  structMarketNavigation.swift
//  MarketNavigationScreen
//
//  Created by Apprenant 16 on 04/05/2023.
//

import Foundation
import SwiftUI

struct BoxView: View {
    @AppStorage("listeDeCourse") var listeDeCourse: [Aliment] = []
    var fruit : Aliment
    @State var enable = false
    @State var position = CGSize.zero

    var body: some View {
        
        ZStack {
            
            Image("box")
                .resizable()
                .frame(width: 120, height: 120)
                //.clipShape(Circle())
                
            GeometryReader { geo in
                Image(fruit.imageAliment)
                    .resizable()
                    .frame(width :60, height: 60)
                    .clipShape(Circle())
                    .offset(position)
                    .gesture(
                        DragGesture()
                            .onChanged { position = $0.translation }
                           .onEnded { _ in
                               withAnimation(.spring()) {
                                   //XMin 70 XMax 320
                                   //YMin 430 YMax 720
                                   
                                   let baseX = geo.frame(in: .global).minX
                                   let baseY = geo.frame(in: .global).minY
                                   let fruitX = abs(position.width)
                                   let fruitY = abs(position.height)
                                   
                                   let totalPosX = baseX + fruitX
                                   let totalPosY = baseY + fruitY
                                   
                                   print("Base X -: \(baseX)")
                                   print("Base Y -: \(baseY)")
                                   print("fruitX -: \(fruitX)")
                                   print("fruitY -: \(fruitY)")
                                   print("totalPosX -: \(totalPosX)")
                                   print("totalPosY -: \(totalPosY)")

                                   if totalPosX > 45 && totalPosX < 600 && totalPosY > 460 && totalPosY < 1000 {
                                       listeDeCourse.append(fruit)
                                   } else{
                                       position = .zero
                                   }
                                  // enable.Toggle()
                                   //enable = true
                                }
                               }
                    )
                
                
            }
            .frame(width :50, height: 50)
            .padding(.bottom, 75.0)
                        
            
                    
         
            
        }
   
                   }
                   
}
            
