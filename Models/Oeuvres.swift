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
    var type: TypeArt
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
    Oeuvre(
        name: "La Joconde de Marseille",
        type: .mural,
        condition: "Bonne",
        auteur: "KAN DMV",
        localisation: "Palais de la Bourse, 13001",
        city: "Marseille",
        picture: "lajocondedemarseille",
        bio: "Dans le cadre de l’exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduite par le Grand Palais Immersif et le Musée du Louvre, le MauMA a donné « carte blanche » à l’artiste Kan / DMV pour la réalisation de l’œuvre. Produite et coordonnée par Méta 2.",
        date: "Mars 2022",
        coordinate: .jocondeMarseille
    ),
    Oeuvre(
        name: "A Violonchelista de Fene",
        type: .mural,
        condition: "Excellente",
        auteur: "SFHIR",
        localisation: "Fene, Galicia",
        city: "Fene",
        picture: "violonchelista_fene",
        bio: "Élu meilleur mural du monde en 2023 par la communauté Street Art Cities. Cette œuvre monumentale intègre magistralement l'architecture du bâtiment pour représenter une violoncelliste dont les cordes s'alignent avec les structures.",
        date: "Août 2023",
        coordinate: .violonchelistaFene
    ),
    Oeuvre(
        name: "Trash Treasure",
        type: .mural,
        condition: "Excellente",
        auteur: "Studio Giftig",
        localisation: "Tilburg Center",
        city: "Tilburg",
        picture: "trash_treasure_tilburg",
        bio: "Réalisé par le duo d'artistes néerlandais mondialement renommé Studio Giftig, vainqueurs réguliers des Street Art Cities Awards, mettant en valeur un style hautement détaillé et surréaliste.",
        date: "2022",
        coordinate: .trashTrashureTilburg
    ),
    Oeuvre(
        name: "Copora",
        type: .mural,
        condition: "Bonne",
        auteur: "Yoe 33",
        localisation: "Ronda de la Muralla",
        city: "Lugo",
        picture: "copora_lugo",
        bio: "Une œuvre historique forte représentant une guerrière celte devant les remparts romains de la ville. Grand succès populaire voté parmi les meilleurs muraux mondiaux.",
        date: "2023",
        coordinate: .coporaLugo
    ),
    Oeuvre(
        name: "Crepúsculo",
        type: .mural,
        condition: "Excellente",
        auteur: "Martín Ron",
        localisation: "San Nicolás de los Arroyos",
        city: "San Nicolás",
        picture: "crepusculo_sannicolas",
        bio: "Troisième contribution majeure de l'artiste argentin Martín Ron dans cette région, capturant des reflets et des portraits d'un réalisme saisissant sous les lueurs du crépuscule.",
        date: "2024",
        coordinate: .crepusculoSanNicolas
    ),
    Oeuvre(
        name: "PA_278",
        type: .invaders,
        condition: "Excellente",
        auteur: "Invader",
        localisation: "Place d'Italie",
        city: "Paris",
        picture: "magic_dreams",
        bio: "Mosaïque iconique en forme de pixel art de l'artiste international Invader, installée secrètement sur les hauteurs d'un bâtiment parisien.",
        date: "2018",
        coordinate: .leMurOberkampf408
    ),
    Oeuvre(
        name: "A Dona do Estuario",
        type: .mural,
        condition: "Excellente",
        auteur: "Lula Goce",
        localisation: "Nigrán, Galicia",
        city: "Nigrán",
        picture: "dona_do_estuario",
        bio: "Dédiée à la mère de l'artiste, cette fresque allie nature sauvage, force féminine et flore locale pour embellir un environnement urbain complexe.",
        date: "2023",
        coordinate: .donaDoEstuarioNigran
    ),
    Oeuvre(
        name: "Le M.U.R #408",
        type: .mural,
        condition: "Excellente",
        auteur: "MURA",
        localisation: "107 Rue Oberkampf, 75011",
        city: "Paris",
        picture: "lemuroberkampf_408",
        bio: "Performance artistique sur le célèbre panneau associatif d'art urbain Oberkampf à Paris, vitrine historique des plus grands street artistes européens.",
        date: "Juin 2026",
        coordinate: .leMurOberkampf408
    ),
    Oeuvre(
        name: "Hommage aux Quartiers",
        type: .calligraphie,
        condition: "Bonne",
        auteur: "Bobar",
        localisation: "Quartier Nord / Centre",
        city: "Marseille",
        picture: "bobar_marseille",
        bio: "Une succession d'actions et d'instants rendant hommage aux différents quartiers de Marseille, mêlant fresques figuratives et lettrages stylisés complexes.",
        date: "2024",
        coordinate: .bobarMarseille
    ),
    Oeuvre(
        name: "Run Away",
        type: .stencil,
        condition: "Bonne",
        auteur: "D*Face",
        localisation: "Lavapiés",
        city: "Madrid",
        picture: "runaway_madrid",
        bio: "Peint par surprise lors du festival Urvanity Art au-dessus d'un ancien mur. Un jeu graphique fort au pochoir explorant l'effacement métaphorique des problèmes sentimentaux.",
        date: "Mars 2020",
        coordinate: .runAwayMadrid
    ),
    Oeuvre(
        name: "Quiet Mind",
        type: .mural,
        condition: "Excellente",
        auteur: "Conse",
        localisation: "Carrer de la Ciutat",
        city: "Barcelona",
        picture: "quietmind_barcelona",
        bio: "Fait partie d'une série d'œuvres introspectives axées sur l'attention portée à soi-même et la sérénité au milieu du chaos urbain de Barcelone.",
        date: "Mars 2020",
        coordinate: .quietMindBarcelona
    ),
    Oeuvre(
        name: "Raiders of the Lost Roll",
        type: .stencil,
        condition: "Passée",
        auteur: "Syro",
        localisation: "Mur libre urbain",
        city: "Bourges",
        picture: "raiders_lost_roll",
        bio: "Intervention humoristique réalisée au pochoir détournant une scène culte d'Indiana Jones pour caricaturer la ruée sur le papier toilette en début de pandémie.",
        date: "Mars 2020",
        coordinate: .raidersLostRollSyro
    ),
    Oeuvre(
        name: "Rusulia",
        type: .mural,
        condition: "Excellente",
        auteur: "Igor Scalisi Palminteri",
        localisation: "Centro Storico",
        city: "Palermo",
        picture: "rusulia_palermo",
        bio: "Hommage contemporain vibrant à Santa Rosalia, la sainte patronne de Palerme, fusionnant iconographie sacrée classique et techniques de peinture murale moderne.",
        date: "2024",
        coordinate: .rusuliaPalermo
    ),
    Oeuvre(
        name: "Reverie",
        type: .mural,
        condition: "Excellente",
        auteur: "Peachzz",
        localisation: "Sheffield Canal",
        city: "Sheffield",
        picture: "reverie_sheffield",
        bio: "Inspiré par le réseau de canaux de Sheffield. L'artiste explore le concept de la rêverie éveillée à travers des palettes douces et organiques intégrées au paysage industriel.",
        date: "2024",
        coordinate: .reverieSheffield
    ),
    Oeuvre(
        name: "The Bull",
        type: .mural,
        condition: "Excellente",
        auteur: "Nuno Miles",
        localisation: "Guarda Center",
        city: "Guarda",
        picture: "the_bull_guarda",
        bio: "Un taureau majestueux et indomptable qui symbolise la force et la résilience culturelle des habitants de cette région frontalière du Portugal.",
        date: "2024",
        coordinate: .nunoMilesGuarda
    ),
    Oeuvre(
        name: "Chuuuut...",
        type: .stencil,
        condition: "Excellente",
        auteur: "Jef Aérosol",
        localisation: "Place St-Merri",
        city: "Paris",
        picture: "chuuuut",
        bio: "Le pochoir XXL le plus célèbre de Paris. Un autoportrait de l'artiste invitant au calme, situé juste en face du Centre Pompidou.",
        date: "2011",
        coordinate: .sbahAireSanJavier
    ),
    Oeuvre(
        name: "Untitled (Bee Project)",
        type: .mural,
        condition: "Excellente",
        auteur: "Paul Watty",
        localisation: "District Éco-urbain",
        city: "Tilburg",
        picture: "paul_watty_tilburg",
        bio: "Une composition majeure axée sur l'effondrement des colonies d'abeilles, peinte dans un quartier engagé dans le reverdissement urbain.",
        date: "2024",
        coordinate: .paulWattyTilburg
    ),
    Oeuvre(
        name: "Le Tigre et la Cigale",
        type: .mosaiques,
        condition: "Excellente",
        auteur: "Mosaik_Marseille",
        localisation: "Le Panier",
        city: "Marseille",
        picture: "tigre_cigale",
        bio: "Une création minutieuse faite de fragments de faïence assemblés à la main dans les ruelles historiques du Panier, représentant la faune locale stylisée.",
        date: "2023",
        coordinate: .gabrielOndarroa
    ),
    Oeuvre(
        name: "Flowers of the Future",
        type: .mural,
        condition: "Excellente",
        auteur: "Ciclope",
        localisation: "Centre-ville",
        city: "Valence",
        picture: "flowers_future_valence",
        bio: "Nommé parmi les plus beaux muraux de l'année. Une œuvre hautement poétique représentant la nature imaginaire qui éclot pour redessiner le futur.",
        date: "2023",
        coordinate: .flowersFutureValence
    ),
    Oeuvre(
        name: "The Magic of Dreams",
        type: .mural,
        condition: "Excellente",
        auteur: "Kato",
        localisation: "Calle Real",
        city: "Fuengirola",
        picture: "magic_dreams",
        bio: "Un voyage visuel dans un monde magique où une enfant semble manipuler des éléments oniriques et lumineux au coin de la rue.",
        date: "2023",
        coordinate: .magicDreamsFuengirola
    )
]
