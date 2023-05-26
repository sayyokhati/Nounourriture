//
//  MapList.swift
//  MapNavigationScreen
//
//  Created by Apprenant 20 on 04/05/2023.
//

import SwiftUI
import MapKit

struct MapList: Identifiable {
    let id = UUID()
//    let title: String
    let adress: String
    let activity: String
    let img: String
//    let text: String
    let name: String
    let time: String
    let number: String
    let coordinate: CLLocationCoordinate2D

}
//
//struct ContentView: View {
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10))

    let mapLists = [
        MapList(adress: "9 Chem. de Bordeneuve, 31830 Plaisance-du-Touch", activity: "Activité cueillette", img: "cueillette", name: "Ferme de la Beguère Produits maraîchers", time: "Du mardi au dimanche de 12h00 à 20h00.",number: "Téléphone: 06.12.67.84.56", coordinate: CLLocationCoordinate2D(latitude: 43.5930195, longitude: 1.4051527)),
        MapList(adress: "17 Chem. du Manel, 31400 Toulouse", activity: "Découverte de la ferme", img: "lama", name: "Centre de dressage d'alpaca", time: "Du mardi au dimanche de 12h00 à 20h00.",number: "Téléphone: 06.15.60.51.36", coordinate: CLLocationCoordinate2D(latitude: 43.6043, longitude: 1.4437)),
        MapList(adress: "Allée antoine bourdel, 31400 Toulouse", activity: "Atelier culinaire", img: "cooking", name: "Chez Sayyo", time: "Du mardi au dimanche de 12h00 à 20h00.",number: "Téléphone: 06.20.30.21.16", coordinate: CLLocationCoordinate2D(latitude: 43.6043, longitude: 1.4037)),
//        MapList(img: "", text: "", name: "Paris", coordinate: CLLocationCoordinate2D(latitude: 43.600010, longitude: 1.433345)),
//        MapList(img: "", text: "", name: "Rome", coordinate: CLLocationCoordinate2D(latitude: 41.9, longitude: 12.5)),
//        MapList(img: "", text: "", name: "Washington DC", coordinate: CLLocationCoordinate2D(latitude: 38.895111, longitude: -77.036667))
    ]
