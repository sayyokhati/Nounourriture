//
//  Pickers.swift
//  Nounouriture
//
//  Created by Apprenant21 on 04/05/2023.
//

import SwiftUI

struct Pickers: View {
    @State  var favoriteCourse = false
    
    var body: some View {
        
        VStack{
            Picker(selection: $favoriteCourse,label: Text(""))
            {
                Text("Catégories").tag(false)
                Text("Listes").tag(true)
                
            }
            
            .pickerStyle(.segmented)
            .frame(width:350)
            
            if favoriteCourse{
                CoursesNavigationScreen()
            }
            else{
                AlimentationNavigationScreen()
            }
        }
    }
}
    
    struct Pickers_Previews: PreviewProvider {
        static var previews: some View {
            Pickers()
        }
    }

