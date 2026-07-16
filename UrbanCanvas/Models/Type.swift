//
//  Type.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import Foundation

enum TypeArt: String, CaseIterable, Identifiable {
    
    var id: String { self.rawValue }
    
    case tous = "Tous"
    case invaders = "Invaders"
    case mosaiques = "Mosaïques"
    case mural = "Mural"
    case stencil = "Stencil"
    case calligraphie = "Calligraphie"

}
