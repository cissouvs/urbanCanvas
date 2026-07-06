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
    var origin: String
    var age: String
    var style: String
    var url: String
    var profilePicture: String
}

var authors: [Author] = [
    Author(
        name: "KAN DMV",
        origin: "France",
        age: "49",
        style: "Pointillisme, Pixel-Art, Graffiti numérique",
        url: "https://www.instagram.com/kan_dmv_street_pointillist/",
        profilePicture: "kan_dmv"
    ),
    Author(
        name: "SFHIR",
        origin: "Madrid, Espagne",
        age: "46",
        style: "Hyperréalisme, Intégration architecturale, Anamorphose",
        url: "https://www.instagram.com/sfhir/",
        profilePicture: "sfhir"
    ),
    Author(
        name: "Studio Giftig",
        origin: "Eindhoven, Pays-Bas",
        age: "57",
        style: "Surréalisme, Photoréalisme hautement détaillé",
        url: "https://www.instagram.com/studiogiftig/?hl=fr",
        profilePicture: "studio_giftig"
    ),
    Author(
        name: "Yoe 33",
        origin: "Lugo, Espagne",
        age: "48",
        style: "Réalisme historique, Figuratif",
        url: "https://www.instagram.com/yoe333/",
        profilePicture: "yoe_33"
    ),
    Author(
        name: "Invader",
        origin: "Paris, France",
        age: "57",
        style: "Pixel-Art, Mosaïque, Culture Geek 8-bit",
        url: "https://www.instagram.com/invaderwashere/?hl=fr",
        profilePicture: "invader"
    ),
    Author(
        name: "Lula Goce",
        origin: "Galice, Espagne",
        age: "41",
        style: "Photoréalisme floral, Nature sauvage et Portraits féminins",
        url: "https://www.instagram.com/lulagoce/?hl=fr",
        profilePicture: "lula_goce"
    ),
    Author(
        name: "MURA",
        origin: "Europe",
        age: "41",
        style: "Art Urbain Contemporain, Abstrait / Lettrage",
        url: "https://murareference.com",
        profilePicture: "no_pictureAuthor"
    ),
    Author(
        name: "Bobar",
        origin: "Marseille, France",
        age: "41",
        style: "Calligraphie urbaine, Lettrages stylisés complexes",
        url: "https://www.instagram.com/bobar.fr/reels/",
        profilePicture: "bobar"
    ),
    Author(
        name: "D*Face",
        origin: "Londres, Royaume-Uni",
        age: "48",
        style: "Pop-Art satirique, Pochoir, Graffiti",
        url: "https://www.instagram.com/dface_official/?hl=fr",
        profilePicture: "d_face"
    ),
    Author(
        name: "Conse",
        origin: "Barcelone, Espagne",
        age: "41",
        style: "Réalisme introspectif, Portraits émotionnels",
        url: "https://www.instagram.com/conse.arts/?hl=fr",
        profilePicture: "conse"
    ),
    Author(
        name: "Syro",
        origin: "France",
        age: "41",
        style: "Pochoir satirique, Humour noir",
        url: "https://www.instagram.com/Syro.one/",
        profilePicture: "syro"
    ),
    Author(
        name: "Igor Scalisi Palminteri",
        origin: "Palerme, Italie",
        age: "41",
        style: "Art sacré contemporain, Peinture murale classique/moderne",
        url: "https://www.instagram.com/igor_scalisipalminteri/",
        profilePicture: "igor_scalisi_palminteri"
    ),
    Author(
        name: "Peachzz",
        origin: "Sheffield, Royaume-Uni",
        age: "41",
        style: "Fresques organiques, Palettes douces, Nature et Industrie",
        url: "https://www.instagram.com/_peachzz_/?hl=fr",
        profilePicture: "peachzz"
    ),
    Author(
        name: "Nuno Miles",
        origin: "Portugal",
        age: "41",
        style: "Figuratif symbolique, Culture locale",
        url: "https://www.instagram.com/NUNOMILES/",
        profilePicture: "nuno_miles"
    ),
    Author(
        name: "Jef Aérosol",
        origin: "Nantes / Lille, France",
        age: "69",
        style: "Pochoir (Stencil-Art) noir et blanc (avec flèche rouge iconique)",
        url: "https://www.instagram.com/jefaerosol/?hl=fr",
        profilePicture: "jef_aerosol"
    ),
    Author(
        name: "Paul Watty",
        origin: "Pays-Bas",
        age: "41",
        style: "Art engagé, Environnemental, Réalisme",
        url: "https://www.instagram.com/paul_watty_art/?hl=fr",
        profilePicture: "paul_watty"
    ),
    Author(
        name: "Mosaik_Marseille",
        origin: "Marseille, France",
        age: "41",
        style: "Mosaïque artisanale, Faïence éclatée, Pixel-Art local",
        url: "https://www.marseille.fr/education/autour-de-lécole/marseille-mosaïque",
        profilePicture: "no_pictureAuthor"
    ),
    Author(
        name: "Ciclope",
        origin: "Espagne",
        age: "41",
        style: "Surréalisme poétique, Nature imaginaire",
        url: "https://www.instagram.com/ciclope_arg/?hl=fr",
        profilePicture: "ciclope"
    ),
    Author(
        name: "Kato",
        origin: "Espagne",
        age: "41",
        style: "Réalisme onirique, Effets de lumière",
        url: "https://www.instagram.com/kato.onlineshop/?hl=fr",
        profilePicture: "kato"
    )
]
