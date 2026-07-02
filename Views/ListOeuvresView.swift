//
//  ListOeuvresView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import SwiftUI
import MapKit

struct ListOeuvresView: View {
    var body: some View {
        
        NavigationStack {
            
            List(oeuvres) { oeuvre in
                NavigationLink {
                    DetailOeuvreView(oeuvre: oeuvre)
                } label: {
                    OeuvreRowView(oeuvre: oeuvre)
                }
            }.navigationTitle("Liste des street Arts")
        }
        
    }
}

#Preview {
    ListOeuvresView()
}
