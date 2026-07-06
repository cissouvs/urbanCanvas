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
                }

            GlobalAuthorView(author: authors[0])
                .tabItem {
                    Label("Auteurs", systemImage: "person.circle")
                }

        }
    }
}

#Preview {
    ContentView()
}
