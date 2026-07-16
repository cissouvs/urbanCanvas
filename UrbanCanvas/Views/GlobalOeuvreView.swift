//
//  HomeView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 03/07/2026.
//

import SwiftUI

struct GlobalOeuvreView: View {
    
    var oeuvre: Oeuvre
    
    @State private var selectedTab = 0
    
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
            
            ZStack {
                
                if selectedTab == 0 {
                    ListOeuvresView()
                }
                
                if selectedTab == 1 {
                    MapView(oeuvre: oeuvre)
                }
                
                VStack {
                    
                    HStack(spacing: 20) {
                        
                        Picker("What is your favorite color?", selection: $selectedTab) {
                            Text("Liste").tag(0)
                            Text("Carte").tag(1)
                            
                        }
                    }
                    
                    .padding(.trailing, 10)
                    .padding(.top, 8)
                    .pickerStyle(.segmented)
                    .frame(width: 280)
                    
                    Spacer()
                    
                }
            }
    }    
}
#Preview {
    GlobalOeuvreView(oeuvre: oeuvres[0])
}
