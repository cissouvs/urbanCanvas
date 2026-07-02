//
//  Oeuvres.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 01/07/2026.
//

import Foundation
import CoreLocation

struct Oeuvre: Identifiable {
    var id = UUID()
    var name: String
    var type: String
    var condition: String
    var auteur: String
    var localisation: String
    var city: String
    var picture: String
    var bio: String
    var date: String
    var coordinate: CLLocationCoordinate2D
}

var oeuvres: [Oeuvre] = [
    Oeuvre(name: "La Joconde de Marseille", type: "Harlftone", condition: "Bonne", auteur: "KAN DMV", localisation: "Palais de la Bourse, 13001", city: "Marseille", picture: "lajocondedemarseille", bio: "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de MArseille a donné « carte blanche » à l’artiste Kan / DMV pour la réalisation de l’œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Monna Lisa au sein de la cité phocéenne.", date: "Mars 2022", coordinate: .jocondeMarseille)
]
