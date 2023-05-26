//
//  MapNavigationScreen.swift
//  MapNavigationScreen
//
//  Created by Apprenant 20 on 04/05/2023.
//
//
import SwiftUI
import MapKit

struct MapNavigationScreen: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 43.600000, longitude: 1.433333), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    @State var isPopUp = false
    @State var selectedMap = mapLists[0]
    
    var body: some View {
        VStack{
            
            HStack {
                Image(systemName: "figure.run")
                                  .font(.system(size: 50))
                                  .foregroundColor(.black)
                                  .padding()
                Text("Activités culturelles")
                    .foregroundColor(.black)
                    .font((.system(size: 30)))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.trailing)
                    .bold()
                
              
                
            }
            ZStack {
                
                Map(coordinateRegion: $region, annotationItems: mapLists) { mapPin in
                    MapAnnotation(coordinate: mapPin.coordinate) {
                        Button{
                            selectedMap = mapPin
                            isPopUp = true
                        }label: {
                            Image(systemName: "mappin")
                                .font(.system(size: 40))
                        }
                    }
                }
                .sheet(isPresented: $isPopUp) {
                    MapNavigationPopUp(mapList: $selectedMap)
                        .presentationDetents([.medium])
                        .foregroundColor(.black)
                        .presentationBackground(Color("lightblue"))
                        .presentationCornerRadius (40)
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
        .background(Color.white)
    }
    
}

struct MapNavigationScreen_Previews: PreviewProvider {
    static var previews: some View {
        MapNavigationScreen()
    }
}
