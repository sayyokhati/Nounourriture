//
//  Structpoupoule.swift
//  GameFarm2
//
//  Created by Apprenant 16 on 10/05/2023.
//

import SwiftUI
struct Poule : View {
    var img : String
    var text : String
    var chiffre : CGFloat
    var chiffre2 : CGFloat
    var chiffrex : CGFloat
    var chiffrey : CGFloat
    @Binding var showThird : Bool
    
    
//    @Binding var isPopup: Bool
    //    private var afficherSheet = false
    var body : some View {
//
            ZStack {
                Button {
                    showThird = true
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
