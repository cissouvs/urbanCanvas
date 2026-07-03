//
//  ListOeuvresView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import SwiftUI
import MapKit

struct ListOeuvresView: View {
    
    @State private var selectedFilter: TypeArt = .tous
    
    @State private var displayMode: String = "Liste"
    
    var filteredOeuvres: [Oeuvre] {
        
        if selectedFilter == .tous {
            
            return oeuvres
        }
        
        return oeuvres.filter {
            
            $0.type == selectedFilter
        }
    }
    
    var body: some View {
        
        ZStack {
            
            NavigationStack {
                
                List(filteredOeuvres) { oeuvre in
                    
                    NavigationLink {
                        
                        DetailOeuvreView(oeuvre: oeuvre)
                        
                    } label : {
                        
                        OeuvreRowView(oeuvre: oeuvre)
                        
                    }
                    
                }
                
                .navigationTitle("Liste des Street Arts")
                
                .toolbar {
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        
                        Menu {
                            
                            VStack {
                                
                                Text("Liste des filtres")
                                Text("Choisissez une type d'art")
                                
                                ForEach(TypeArt.allCases) { type in
                                    Button {
                                        selectedFilter = type
                                    } label: {
                                        if selectedFilter == type {
                                            Label(type.rawValue, systemImage: "checkmark")
                                        } else {
                                            Text(type.rawValue)
                                        }
                                    }
                                }
                            }
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .font(.title2)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ListOeuvresView()
}
