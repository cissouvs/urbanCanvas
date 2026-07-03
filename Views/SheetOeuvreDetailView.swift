//
//  SheetOeuvreDetailView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 03/07/2026.
//

import SwiftUI

struct SheetOeuvreDetailView: View {
    
    var oeuvre: Oeuvre
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    Button(action: {
                        
                        dismiss()
                        
                    }) {
                        
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.secondText)
                            .font(.largeTitle)
                            .padding(.horizontal, 10)
                        
                    }
                    
                    Spacer()
                    
                    Text(oeuvre.name)
                        .font(.title3)
                        .foregroundStyle(.mainText)
                        .bold()
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    NavigationLink {
                        
                        DetailOeuvreView(oeuvre: oeuvre)
                        
                    } label: {
                        
                        Image(systemName: "arrow.right")
                            .foregroundStyle(.white)
                            .font(.title2)
                            .padding(10)
                            .background(.mainOrange)
                            .cornerRadius(100)
                            .padding()
                    }
                    
                }

                Image(oeuvre.picture)
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                
                Text(oeuvre.bio)
                    .padding(10)
                
                Spacer()
                
            }
        }
    }
}


#Preview {
    SheetOeuvreDetailView(oeuvre: oeuvres[0])
}
