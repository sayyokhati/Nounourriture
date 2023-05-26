//
//  AlimentationNavigationScreen.swift
//  Nounouriture
//
//  Created by Apprenant21 on 04/05/2023.
//

import SwiftUI

struct AlimentationNavigationScreen: View {
    @AppStorage("listeDeCourse") var listeDeCourse: [Aliment] = []
    
    @State private var searchText = ""
    
    var searchAliment: [Category] {
        if searchText.isEmpty{
            return []
        } else {
            return aliments
        }
    }
    
    @State var showToast = false
    
    var body: some View {
        
        
        
        VStack {
            NavigationStack {
                
                VStack {
                    ScrollView {
                        ForEach(aliments){ aliment in
                            NavigationLink (){
                                AlimentCategoryDetails(category:aliment)
                            } label: {
                                
                                
                                HStack{
                                    Image(aliment.imageAliment)
                                        .resizable()
                                        .frame(width:60, height:60)
                                        .clipShape(Circle())
                                        .shadow(radius: 5)
                                        .padding(.leading)
                                    Text(aliment.name)
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                    
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.blue)
                                        .shadow(radius: 10)
                                }
                                Spacer()
                            }
                            
                            Divider()
                        }
                        
                    }
                }
                .navigationBarTitle("Catégories")
                
            }
            .searchable(text:$searchText, prompt: "J'ai besoin de..."){
                ForEach(searchAliment){ category in
                    ForEach(category.aliments.filter({ $0.nameAliment.contains(searchText)})) { aliment in
                        
                        Button {
                            listeDeCourse.append(aliment)
                            withAnimation {
                                showToast = true
                            }
                        } label: {
                            Text(aliment.nameAliment)
                            
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
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            }
                        }
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0){
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

struct AlimentationNavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        AlimentationNavigationScreen()
    }
}
