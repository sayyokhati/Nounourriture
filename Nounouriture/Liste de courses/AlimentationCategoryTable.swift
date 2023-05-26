//
//  AlimentationCategoryTable.swift
//  Nounouriture
//
//  Created by Apprenant21 on 04/05/2023.
//

import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    var name: String
    var imageAliment: String
    
    var aliments : [Aliment]
}

struct Aliment: Identifiable, Codable {
    var id = UUID()
    var nameAliment: String
    var imageAliment: String
    
}
    var aliments = [
        
    
        Category(name: "Pains et pâtisseries",imageAliment:"Bread", aliments: [ Aliment(nameAliment: "Baguette", imageAliment: "baguette"),Aliment(nameAliment: "Chocolatine", imageAliment: "painauchocolat"),Aliment(nameAliment: "Croissant", imageAliment: "croissant"),Aliment(nameAliment: "Pain", imageAliment: "pain"),Aliment(nameAliment: "Religieuse au chocolat", imageAliment: "religieuse"),Aliment(nameAliment: "Tarte aux pommes", imageAliment: "tarte")]),
        
        Category(name: "Fruits et légumes", imageAliment: "orange", aliments: [ Aliment(nameAliment: "Artichauds", imageAliment: "artichaud"),Aliment(nameAliment: "Asperges", imageAliment: "asperges"),Aliment(nameAliment: "Aubergines", imageAliment: "aubergine"),Aliment(nameAliment: "Avocats", imageAliment: "avocat"),Aliment(nameAliment: "Poireaux", imageAliment: "poireaux"),Aliment(nameAliment: "Tomates", imageAliment: "tomates")]),
        
        Category(name: "Poissons et viandes", imageAliment: "pouletroti", aliments: [Aliment(nameAliment: "Cabillaud", imageAliment: "cabillaud"),Aliment(nameAliment: "Canard", imageAliment: "canard"),Aliment(nameAliment: "Boeuf", imageAliment: "onglet"),Aliment(nameAliment: "Poulet entier", imageAliment: "poulet"),Aliment(nameAliment: "Saumon", imageAliment: "saumon")]),
        
        Category(name: "Produits laitiers", imageAliment: "cheese", aliments: [Aliment(nameAliment: "Crème liquide", imageAliment: "liquide"),Aliment(nameAliment: "Emmental", imageAliment: "emmental"),Aliment(nameAliment: "Mousse au chocolat", imageAliment: "mousse"),Aliment(nameAliment: "Mozzarella", imageAliment: "mozza"),Aliment(nameAliment: "Yaourt nature", imageAliment: "yaourt")]),
        
        Category(name: "Pâtes, riz et conserves", imageAliment: "pasta", aliments: [Aliment(nameAliment: "Farfalle", imageAliment: "pasta"),Aliment(nameAliment: "Haricots verts", imageAliment: "haricot"),Aliment(nameAliment: "Purée mousline", imageAliment: "purée"),Aliment(nameAliment: "Ratatouille", imageAliment: "ratatouille"),Aliment(nameAliment: "Riz basmati", imageAliment: "Riz")]),
        
        Category(name: "Surgelés et plats cuisinés", imageAliment: "flake", aliments: [Aliment(nameAliment: "Escargots", imageAliment: "escargots"),Aliment(nameAliment: "Gratin de ravioles", imageAliment: "gratin"),Aliment(nameAliment: "Gyoza", imageAliment: "gyoza"),Aliment(nameAliment: "Haricots blancs", imageAliment: "surgeles"),Aliment(nameAliment: "Tenders de poulet", imageAliment: "tenders")]),
        
        Category(name: "Snacks et friandises", imageAliment: "lutti", aliments: [Aliment(nameAliment: "Coco Pops", imageAliment: "cocopops"),Aliment(nameAliment: "Madeleine", imageAliment: "madeleine"),Aliment(nameAliment: "Napolitain", imageAliment: "napolitain"),Aliment(nameAliment: "Lutti", imageAliment: "lutti"),Aliment(nameAliment: "Snickers", imageAliment: "snickers")]),
        
        Category(name: "Boissons", imageAliment: "boissons", aliments: [Aliment(nameAliment: "Coca cola", imageAliment: "coca"),Aliment(nameAliment: "Heinekein", imageAliment: "biere"),Aliment(nameAliment: "San Pellegrino", imageAliment: "sanpe"),Aliment(nameAliment: "Vin rosé", imageAliment: "rosé"),Aliment(nameAliment: "Vin rouge", imageAliment: "rouge")])
        
        
        
        
        
    ]

