//
//  CardView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    var oeuvre: Oeuvre
    
    @State private var cameraPosition: MapCameraPosition = .automatic
    
    @State private var isTouch = false
    
    @State private var selectedOeuvre : Oeuvre?
    
    @State private var selectedFilter: TypeArt = .tous
    
    var filteredOeuvres: [Oeuvre] {
        
        if selectedFilter == .tous {
            return oeuvres
        }
        
        return oeuvres.filter {
            $0.type == selectedFilter
        }
    }
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Map {
                    
                    ForEach(filteredOeuvres) { place in
                        Annotation(place.name, coordinate: place.coordinate) {
                            
                            Button(action: {
                                selectedOeuvre = place
                            }) {
                                
                                Image(place.picture)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 25, height: 25)
                                    .clipShape(Circle())
                                    .padding(.trailing, 5)
                                
                            }
                        }
                    }
                }
                
                .onAppear {
                    let position = oeuvre.coordinate
                    let positionSpan = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                    let positionRegion = MKCoordinateRegion(center: position, span: positionSpan)
                    cameraPosition = .region(positionRegion)
                }
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            
            .sheet(item: $selectedOeuvre) { place in
                SheetOeuvreDetailView(oeuvre: place)
                                    .presentationDetents([.fraction(0.6)])
                                    .presentationDragIndicator(.visible)
                                    .presentationBackground(.opacity(0.3))
                                    .presentationCornerRadius(20)
                    }
            
            .toolbar {
                
                ToolbarItem(placement: .topBarTrailing) {
                    
                    Menu {
                        
                        VStack {
                            
                            Text("Liste des filtres")
                            Text("Choisissez une type d'art")
                            
                            ForEach(TypeArt.allCases) { type in
                                
                                Button {
                                    selectedFilter = type
                                }
                                
                                label: {
                                    if selectedFilter == type {
                                        Label(type.rawValue, systemImage: "checkmark")
                                        
                                    } else {
                                        
                                        Text(type.rawValue)
                                        
                                    }
                                }
                            }
                        }
                    }
                    
                    label: {
                        
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .font(.title2)
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    MapView(oeuvre: oeuvres[0])
}
