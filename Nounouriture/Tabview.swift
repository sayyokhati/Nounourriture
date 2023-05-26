//
//  Tabview.swift
//  Nounouriture
//
//  Created by Apprenant21 on 04/05/2023.
//

import SwiftUI

struct Tabview: View {
    @State var alertPopUp = false

    var body: some View {
        
       
            TabView{
                
                MainNavigationScreen (imageBackground: "snow", imageButton: "Frozen", ColorCircle: Color.cyan)
                    .tabItem {
                        Label("Jeux", systemImage:"gamecontroller.fill")
                        
                    }
                MapNavigationScreen()
                    .tabItem {
                        Label("Activités", systemImage:"map.fill")
                    }
              Pickers()
                    .tabItem {
                        Label("Listes", systemImage:"list.bullet.circle.fill")
                           
                    }
            
        }
            .accentColor(.black)
            .overlay {
                 if alertPopUp{
                     ZStack {
                         Button {
                             withAnimation {
                                 alertPopUp = false
                             }
                         } label: {
                             RoundedRectangle(cornerRadius: 5)
                                 .opacity(0)
                             
                         }

                         PopUpTutoView()
                     }
                 }
                
            }
            .onAppear{
                withAnimation {
                    alertPopUp = true
                }
            }
    }
}

struct Tabview_Previews: PreviewProvider {
    static var previews: some View {
        Tabview()
    }
}
