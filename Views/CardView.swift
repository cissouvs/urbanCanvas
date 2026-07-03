//
//  CardView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import SwiftUI
import MapKit

struct CardView: View {
    
    var oeuvre: Oeuvre
    
    @State private var cameraPosition: MapCameraPosition = .automatic
    
    @State private var isTouch = false
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Map {
                    ForEach(oeuvres) { place in
                        
                        Annotation(place.name, coordinate: place.coordinate) {
                            
                            Button(action: {
                                
                                isTouch = true
                                
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
            .sheet(isPresented: $isTouch) {
                SheetOeuvreDetailView(oeuvre: oeuvre)
                                    .presentationDetents([.fraction(0.6)])
                                    .presentationDragIndicator(.visible)
                                    .presentationBackground(.opacity(0.3))
                                    .presentationCornerRadius(20)
                    }
        }
    }
}

#Preview {
    CardView(oeuvre: oeuvres[0])
}
