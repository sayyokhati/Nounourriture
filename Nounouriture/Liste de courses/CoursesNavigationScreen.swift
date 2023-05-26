//
//  CoursesNavigationScreen.swift
//  Nounouriture
//
//  Created by Apprenant21 on 04/05/2023.
//

import SwiftUI

struct CoursesNavigationScreen: View {
    @AppStorage("listeDeCourse") var listeDeCourse: [Aliment] = []

    var body: some View {
        
      
        
            ScrollView {
              
                    ZStack{
                       
                            VStack {
                               
                                ZStack {
                                    
                                    Text("Liste de courses")
                                        .font(.system(.largeTitle, design: .rounded))
                                        .foregroundColor(Color(hue: 0.486, saturation: 0.0, brightness: 0.0))
                                        .padding(.top, 10.0)
                                }
                                    
                                    ForEach(listeDeCourse){ aliment in
                                        HStack{
                                            Text(aliment.nameAliment)
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(Color.black)
                                                .padding()
                                            Spacer()
                                            Image(systemName: "trash.slash.fill")
                                                .foregroundColor(.black)
                                                .padding()
                                                .onTapGesture {
                                                    listeDeCourse.removeAll { ali in
                                                        ali.id == aliment.id
                                                    }
                                                }
                                            
                                        }
                                        .background(Color("lightblue"))
                                        .cornerRadius(6)
                                        .padding()
                            }
                                if listeDeCourse.isEmpty {
                                    Text("Aucun aliment dans la liste")
                                        .padding(.top,250)
                                        .bold()
                                        .font(.title3)
                                        
                                    
                                }
                            }
                    
                            
                    }
                }
        }
    }
    
    struct CoursesNavigationScreen_Previews: PreviewProvider {
        static var previews: some View {
            CoursesNavigationScreen()
        }
    }

