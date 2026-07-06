//
//  ContentView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 01/07/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            GlobalOeuvreView(oeuvre: oeuvres[0])
                .tabItem {
                    Label("Oeuvres", systemImage: "photo.artframe.circle")
                        .environment(\.symbolVariants, .none)
                }
                

            GlobalAuthorView(author: authors[0])
                .tabItem {
                    Label("Auteurs", systemImage: "person.circle")
                        .environment(\.symbolVariants, .none)
                }
            
            MissionsView(currentTabIndex: 0)
                .tabItem {
                    Label("Missions", systemImage: "book")
                        .environment(\.symbolVariants, .none)
                }
            
        }
    }
}

#Preview {
    ContentView()
}
