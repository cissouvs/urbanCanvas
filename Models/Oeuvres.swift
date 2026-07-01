//
//  Oeuvres.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 01/07/2026.
//

import Foundation

struct Oeuvre: Identifiable {
    var id = UUID()
    var name: String
    var type: String
    var condition: String
    var auteur: String
    var localisation: String
}

var oeuvres = {
    Oeuvre(name: "La Joconde de Marseille", type: "Harlftone", condition: "bonne", auteur: "KAN DMV", localisation: "Palais de la Bourse, 13001 Marseille")
}
