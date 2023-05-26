//
//  StructMouton.swift
//  GameFarm2
//
//  Created by Apprenant 16 on 10/05/2023.
//

import SwiftUI
struct Mouton : View {
    var img : String
    var text : String
    var chiffre : CGFloat
    var chiffre2 : CGFloat
    var chiffrex : CGFloat
    var chiffrey : CGFloat
    @Binding var showSecond :  Bool
    
    
//    @Binding var isPopup1: Bool
    var body : some View {
        ZStack {
            Button {
                showSecond = true
            } label: {
                Image(img)
                    .resizable()
                    .frame(width: chiffre, height: chiffre2)
            }
        }
        .offset(x:chiffrex,y: chiffrey)
        .offset(x:chiffrex,y: chiffrey)
        
                    }
                    
                }
