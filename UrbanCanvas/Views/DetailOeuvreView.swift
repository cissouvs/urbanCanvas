//
//  DetailOeavreView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import SwiftUI
import MapKit

struct DetailOeuvreView: View {
    
    var oeuvre: Oeuvre
    
    @State private var cameraPosition: MapCameraPosition = .automatic
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            Image(oeuvre.picture)
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
            
            Text(oeuvre.name)
                .font(.title)
                .foregroundStyle(.mainOrange)
                .bold()
                .padding(.horizontal, 10)
            
            Text(oeuvre.bio)
                .padding(10)
            
            HStack {
                
                Text("Type :")
                    .bold()
                
                Text(oeuvre.type.rawValue)
                
            }.padding(.horizontal, 10)
            
            HStack {
                
                Text("Condition :")
                    .bold()
                
                Text(oeuvre.condition)
                
            }.padding(.horizontal, 10)
            
            HStack {
                
                Text("Date :")
                    .bold()
                
                Text(oeuvre.date)
                
            }.padding(.horizontal, 10)
            
            HStack {
                
                Text("Auteur :")
                    .bold()
                
                Text(oeuvre.auteur)
                
            }.padding(.horizontal, 10)
            
            HStack {
                
                Text("Localisation :")
                    .bold()
                
                Text("\(oeuvre.localisation) \(oeuvre.city)")
                
            }.padding(.horizontal, 10)
            
            Map(position: $cameraPosition) {
                
                Marker(coordinate: oeuvre.coordinate) {
                    
                    Label("La Joconde de Marseille", systemImage: oeuvre.picture)
                    
                }
                
                
            }
            .onAppear {
                let marseille = oeuvre.coordinate
                let marseilleSpan = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                let marseilleRegion = MKCoordinateRegion(center: marseille, span: marseilleSpan)
                cameraPosition = .region(marseilleRegion)
            } .frame(width : 358, height: 157)
                .cornerRadius(26)
                .padding(.vertical)
                .colorScheme(.dark)
                .padding()
                .clipShape(.rect)
                .cornerRadius(20)
            
            Spacer()
            
        } .foregroundStyle(.mainText)
    }
}

#Preview {
    DetailOeuvreView(oeuvre: oeuvres[0])
}
