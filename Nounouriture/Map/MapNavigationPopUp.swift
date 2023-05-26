//
//  MapNavigationPopUp.swift
//  MapNavigationScreen
//
//  Created by Apprenant 20 on 04/05/2023.
//

import SwiftUI

struct MapNavigationPopUp: View {
    @Binding var mapList: MapList
    var body: some View {
        VStack{
            Image(mapList.img)
                .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 200.0, height: 200.0, alignment: .center)
                  .clipShape(Circle())
            
            Text("\(mapList.name)")
                .bold()
                .foregroundColor(.black)
                .font(.title)
                .font(.system(size: 20, weight: .black, design: .serif))
                .frame(maxWidth: .infinity, alignment: .leading)
//                .multilineTextAlignment(.leading)

            
            Text("\(mapList.activity)")
                .foregroundColor(.black)
                .font(.system(size: 20, weight: .heavy, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .leading)

//                .multilineTextAlignment(.leading)
//                .padding()
            
            Text("\(mapList.adress)")
                .foregroundColor(.black)
                .font(.system(size: 17, weight: .heavy, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("\(mapList.time)")
                .foregroundColor(.black)
                .font(.system(size: 17, weight: .heavy, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("\(mapList.number)")
                .foregroundColor(.black)
                .font(.system(size: 17, weight: .heavy, design: .rounded))
                .frame(maxWidth: .infinity, alignment: .leading)
            
//                .multilineTextAlignment(.leading)
//            
//            Text("\(mapList.hobby)")
//                .foregroundColor(.gray)
//            Text("Number of members : \(mapList.membersNumber)")
//                .foregroundColor(.gray)
//            List(mapList.ocean, id: \.self){ ocean in
//               Text(ocean)
//            }
            
        }
        .padding()

    }
}
