//
//  Author.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 03/07/2026.
//

import Foundation

struct Author: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var origin: String?
    var age: Int?
    var style: String?
    var url: String
}

var authors: [String: Author] = [
    "KAN DMV": Author(
        name: "KAN DMV",
        origin: "France",
        age: nil,
        style: "Pointillisme, Pixel-Art, Graffiti numérique",
        url: "https://kandmv.com/"
    ),
    "SFHIR": Author(
        name: "SFHIR",
        origin: "Madrid, Espagne",
        age: 46,
        style: "Hyperréalisme, Intégration architecturale, Anamorphose",
        url: "https://streetartcities.com/artists/sfhir"
    ),
    "Studio Giftig": Author(
        name: "Studio Giftig",
        origin: "Eindhoven, Pays-Bas",
        age: nil,
        style: "Surréalisme, Photoréalisme hautement détaillé",
        url: "https://studiogiftig.nl/"
    ),
    "Yoe 33": Author(
        name: "Yoe 33",
        origin: "Lugo, Espagne",
        age: nil,
        style: "Réalisme historique, Figuratif",
        url: "https://www.instagram.com/yoe33_/"
    ),
    "Invader": Author(
        name: "Invader",
        origin: "Paris, France",
        age: 57,
        style: "Pixel-Art, Mosaïque, Culture Geek 8-bit",
        url: "https://www.space-invaders.com/"
    ),
    "Lula Goce": Author(
        name: "Lula Goce",
        origin: "Galice, Espagne",
        age: nil,
        style: "Photoréalisme floral, Nature sauvage et Portraits féminins",
        url: "https://streetartcities.com/artists/lula-goce"
    ),
    "MURA": Author(
        name: "MURA",
        origin: "Europe",
        age: nil,
        style: "Art Urbain Contemporain, Abstrait / Lettrage",
        url: "https://www.lemuroberkampf.com/"
    ),
    "Bobar": Author(
        name: "Bobar",
        origin: "Marseille, France",
        age: nil,
        style: "Calligraphie urbaine, Lettrages stylisés complexes",
        url: "https://www.instagram.com/bobar.art/"
    ),
    "D*Face": Author(
        name: "D*Face",
        origin: "Londres, Royaume-Uni",
        age: 48,
        style: "Pop-Art satirique, Pochoir, Graffiti",
        url: "https://www.dface.co.uk/"
    ),
    "Conse": Author(
        name: "Conse",
        origin: "Barcelone, Espagne",
        age: nil,
        style: "Réalisme introspectif, Portraits émotionnels",
        url: "https://www.instagram.com/conse.art/"
    ),
    "Syro": Author(
        name: "Syro",
        origin: "France",
        age: nil,
        style: "Pochoir satirique, Humour noir",
        url: "https://www.instagram.com/syro_art/"
    ),
    "Igor Scalisi Palminteri": Author(
        name: "Igor Scalisi Palminteri",
        origin: "Palerme, Italie",
        age: nil,
        style: "Art sacré contemporain, Peinture murale classique/moderne",
        url: "https://www.igorscalisipalminteri.it/"
    ),
    "Peachzz": Author(
        name: "Peachzz",
        origin: "Sheffield, Royaume-Uni",
        age: nil,
        style: "Fresques organiques, Palettes douces, Nature et Industrie",
        url: "https://www.peachzz.co.uk/"
    ),
    "Nuno Miles": Author(
        name: "Nuno Miles",
        origin: "Portugal",
        age: nil,
        style: "Figuratif symbolique, Culture locale",
        url: "https://www.instagram.com/nunomiles/"
    ),
    "Jef Aérosol": Author(
        name: "Jef Aérosol",
        origin: "Nantes / Lille, France",
        age: 69,
        style: "Pochoir (Stencil-Art) noir et blanc (avec flèche rouge iconique)",
        url: "https://www.jefaerosol.com/"
    ),
    "Paul Watty": Author(
        name: "Paul Watty",
        origin: "Pays-Bas",
        age: nil,
        style: "Art engagé, Environnemental, Réalisme",
        url: "https://www.paulwatty.com/"
    ),
    "Mosaik_Marseille": Author(
        name: "Mosaik_Marseille",
        origin: "Marseille, France",
        age: nil,
        style: "Mosaïque artisanale, Faïence éclatée, Pixel-Art local",
        url: "https://www.instagram.com/mosaik_marseille/"
    ),
    "Ciclope": Author(
        name: "Ciclope",
        origin: "Espagne",
        age: nil,
        style: "Surréalisme poétique, Nature imaginaire",
        url: "https://www.instagram.com/ciclope___/"
    ),
    "Kato": Author(
        name: "Kato",
        origin: "Espagne",
        age: nil,
        style: "Réalisme onirique, Effets de lumière",
        url: "https://www.instagram.com/kato.paint/"
    )
]
