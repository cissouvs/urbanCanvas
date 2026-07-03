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
    var profilePicture: String
}

var authors: [String: Author] = [
    "KAN DMV": Author(
        name: "KAN DMV",
        origin: "France",
        age: nil,
        style: "Pointillisme, Pixel-Art, Graffiti numérique",
        url: "https://www.instagram.com/kan_dmv_street_pointillist/",
        profilePicture: "kan_dmv"
    ),
    "SFHIR": Author(
        name: "SFHIR",
        origin: "Madrid, Espagne",
        age: 46,
        style: "Hyperréalisme, Intégration architecturale, Anamorphose",
        url: "https://www.instagram.com/sfhir/",
        profilePicture: "sfhir"
    ),
    "Studio Giftig": Author(
        name: "Studio Giftig",
        origin: "Eindhoven, Pays-Bas",
        age: nil,
        style: "Surréalisme, Photoréalisme hautement détaillé",
        url: "https://www.instagram.com/studiogiftig/?hl=fr",
        profilePicture: "studio_giftig"
    ),
    "Yoe 33": Author(
        name: "Yoe 33",
        origin: "Lugo, Espagne",
        age: nil,
        style: "Réalisme historique, Figuratif",
        url: "https://www.instagram.com/yoe333/",
        profilePicture: "yoe_33"
    ),
    "Invader": Author(
        name: "Invader",
        origin: "Paris, France",
        age: 57,
        style: "Pixel-Art, Mosaïque, Culture Geek 8-bit",
        url: "https://www.instagram.com/invaderwashere/?hl=fr",
        profilePicture: "invader"
    ),
    "Lula Goce": Author(
        name: "Lula Goce",
        origin: "Galice, Espagne",
        age: nil,
        style: "Photoréalisme floral, Nature sauvage et Portraits féminins",
        url: "https://www.instagram.com/lulagoce/?hl=fr",
        profilePicture: "lula_goce"
    ),
    "MURA": Author(
        name: "MURA",
        origin: "Europe",
        age: nil,
        style: "Art Urbain Contemporain, Abstrait / Lettrage",
        url: "https://murareference.com",
        profilePicture: "no_pictureAuthor"
    ),
    "Bobar": Author(
        name: "Bobar",
        origin: "Marseille, France",
        age: nil,
        style: "Calligraphie urbaine, Lettrages stylisés complexes",
        url: "https://www.instagram.com/bobar.fr/reels/",
        profilePicture: "bobar"
    ),
    "D*Face": Author(
        name: "D*Face",
        origin: "Londres, Royaume-Uni",
        age: 48,
        style: "Pop-Art satirique, Pochoir, Graffiti",
        url: "https://www.instagram.com/dface_official/?hl=fr",
        profilePicture: "d_face"
    ),
    "Conse": Author(
        name: "Conse",
        origin: "Barcelone, Espagne",
        age: nil,
        style: "Réalisme introspectif, Portraits émotionnels",
        url: "https://www.instagram.com/conse.arts/?hl=fr",
        profilePicture: "conse"
    ),
    "Syro": Author(
        name: "Syro",
        origin: "France",
        age: nil,
        style: "Pochoir satirique, Humour noir",
        url: "https://www.instagram.com/Syro.one/",
        profilePicture: "syro"
    ),
    "Igor Scalisi Palminteri": Author(
        name: "Igor Scalisi Palminteri",
        origin: "Palerme, Italie",
        age: nil,
        style: "Art sacré contemporain, Peinture murale classique/moderne",
        url: "https://www.instagram.com/igor_scalisipalminteri/",
        profilePicture: "igor_scalisi_palminteri"
    ),
    "Peachzz": Author(
        name: "Peachzz",
        origin: "Sheffield, Royaume-Uni",
        age: nil,
        style: "Fresques organiques, Palettes douces, Nature et Industrie",
        url: "https://www.instagram.com/_peachzz_/?hl=fr",
        profilePicture: "peachzz"
    ),
    "Nuno Miles": Author(
        name: "Nuno Miles",
        origin: "Portugal",
        age: nil,
        style: "Figuratif symbolique, Culture locale",
        url: "https://www.instagram.com/NUNOMILES/",
        profilePicture: "nuno_miles"
    ),
    "Jef Aérosol": Author(
        name: "Jef Aérosol",
        origin: "Nantes / Lille, France",
        age: 69,
        style: "Pochoir (Stencil-Art) noir et blanc (avec flèche rouge iconique)",
        url: "https://www.instagram.com/jefaerosol/?hl=fr",
        profilePicture: "jef_aerosol"
    ),
    "Paul Watty": Author(
        name: "Paul Watty",
        origin: "Pays-Bas",
        age: nil,
        style: "Art engagé, Environnemental, Réalisme",
        url: "https://www.instagram.com/paul_watty_art/?hl=fr",
        profilePicture: "paul_watty"
    ),
    "Mosaik_Marseille": Author(
        name: "Mosaik_Marseille",
        origin: "Marseille, France",
        age: nil,
        style: "Mosaïque artisanale, Faïence éclatée, Pixel-Art local",
        url: "https://www.marseille.fr/education/autour-de-lécole/marseille-mosaïque",
        profilePicture: "no_pictureAuthor"
    ),
    "Ciclope": Author(
        name: "Ciclope",
        origin: "Espagne",
        age: nil,
        style: "Surréalisme poétique, Nature imaginaire",
        url: "https://www.instagram.com/ciclope_arg/?hl=fr",
        profilePicture: "ciclope"
    ),
    "Kato": Author(
        name: "Kato",
        origin: "Espagne",
        age: nil,
        style: "Réalisme onirique, Effets de lumière",
        url: "https://www.instagram.com/kato.onlineshop/?hl=fr",
        profilePicture: "kato"
    )
]
