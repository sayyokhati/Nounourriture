//
//  ecranNavigation.swift
//  Nounouriture
//
//  Created by Apprenant21 on 08/05/2023.
//

import SwiftUI

struct ecranNavigation: View {
    var body: some View {
        
        ZStack {
            HStack {
                Spacer()
                Image("insta")
                    .resizable()
                .frame(width:80, height: 80)
                Spacer()
                Image("meteo")
                    .resizable()
                .frame(width:80, height: 80)
                Spacer()
                Image("musique")
                    .resizable()
                .frame(width:80, height: 80)
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(.white)
                    .frame(width:80,height: 80)
                    Image("N")
                        .resizable()
                    .frame(width:70, height: 70)
                }
                Spacer()
            }
            .padding(.top, -350)
        }
        .background(
            Image("fond-ecran-ios-15-iphone-13-6")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        )
    }
}


struct ecranNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ecranNavigation()
    }
}
