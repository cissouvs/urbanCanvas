//
//  Coordinates.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import Foundation
import CoreLocation
import MapKit

extension CLLocationCoordinate2D: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(latitude)
        hasher.combine(longitude)
    }

    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
        lhs.latitude == rhs.latitude && lhs.longitude == rhs.longitude
    }
}
extension CLLocationCoordinate2D {
    static let jocondeMarseille: Self = .init(latitude: 43.2965, longitude: 5.3756)
    static let violonchelistaFene: Self = .init(latitude: 43.4735, longitude: -8.1624)
    static let trashTrashureTilburg: Self = .init(latitude: 51.5555, longitude: 5.0913)
    static let coporaLugo: Self = .init(latitude: 43.0125, longitude: -7.5558)
    static let crepusculoSanNicolas: Self = .init(latitude: 33.3333, longitude: 6.2167)
    static let donaDoEstuarioNigran: Self = .init(latitude: 42.1415, longitude: -8.8062)
    static let leMurOberkampf408: Self = .init(latitude: 48.8648, longitude: 2.3734)
    static let bobarMarseille: Self = .init(latitude: 43.2964, longitude: 5.3742)
    static let runAwayMadrid: Self = .init(latitude: 40.4081, longitude: -3.7012)
    static let quietMindBarcelona: Self = .init(latitude: 41.3851, longitude: 2.1734)
    static let raidersLostRollSyro: Self = .init(latitude: 46.2276, longitude: 2.2137)
    static let rusuliaPalermo: Self = .init(latitude: 38.1157, longitude: 13.3614)
    static let reverieSheffield: Self = .init(latitude: 53.3811, longitude: -1.4701)
    static let nunoMilesGuarda: Self = .init(latitude: 40.5364, longitude: -7.2683)
    static let sbahAireSanJavier: Self = .init(latitude: 37.8063, longitude: -0.8374)
    static let paulWattyTilburg: Self = .init(latitude: 51.5555, longitude: 5.0913)
    static let diegoAsLinares: Self = .init(latitude: 38.0942, longitude: -3.6314)
    static let oscarAxoLurcy: Self = .init(latitude: 46.6753, longitude: 2.9384)
    static let gabrielOndarroa: Self = .init(latitude: 43.3214, longitude: -2.4208)
    static let flowersFutureValence: Self = .init(latitude: 44.9333, longitude: 4.8917)
    static let magicDreamsFuengirola: Self = .init(latitude: 36.5417, longitude: -4.6250)
}


