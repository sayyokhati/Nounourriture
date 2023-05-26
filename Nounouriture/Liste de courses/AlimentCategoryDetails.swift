//
//  AlimentCategoryDetails.swift
//  Nounouriture
//
//  Created by Apprenant21 on 04/05/2023.
//

import SwiftUI

struct AlimentCategoryDetails: View {
    
    @AppStorage("listeDeCourse") var listeDeCourse: [Aliment] = []
    @State var showToast = false
    
    var columns = [GridItem(.flexible()),
                   GridItem(.flexible()),
                   GridItem(.flexible())]
    var category: Category
    var body: some View {
        
        VStack {
            
            ScrollView {
                
                Text(" De A à Z ")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.trailing, 280.0)
                Spacer()
                
                LazyVGrid(columns: columns) {
                    
                    ForEach(category.aliments) { aliment in
                        
                        Button {
                            listeDeCourse.append(aliment)
                            showToast = true
                        } label: {
                            VStack{
                                   
                                Image (aliment.imageAliment)
                                        .resizable()
                                        .frame(width:90, height:90)
                                        .clipShape(Circle())
                                        .shadow(radius: 5)
                                    
                                
                                
                                Text(aliment.nameAliment)
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.black)
                                
                            }
                        }
                    }
                }
            }
            .overlay{
                VStack{
                    if showToast {
                        ZStack{
                            RoundedRectangle(cornerRadius: 16, style: .continuous)
                                .fill(.ultraThinMaterial)
                                .frame(width: 200, height: 200)
                            VStack{
                                Image(systemName: "checkmark")
                                    .font(.system(size: 50))
                                    .foregroundColor(.green)
                                    .padding()
                                    
                                Text("Ajouté à la liste")
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            }
                        }
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                                withAnimation {
                                    showToast = false
                                }
                            }
                        }
                    }
                }
            }
        }
        }
    }
    
    struct AlimentCategoryDetails_Previews: PreviewProvider {
        static var previews: some View {
            
            AlimentCategoryDetails(category: aliments[0])
        }
    }
