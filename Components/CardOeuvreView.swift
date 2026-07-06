//
//  CardOeuvreView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 06/07/2026.
//

import SwiftUI

struct CardOeuvreView: View {
    
    var oeuvre: Oeuvre
    
    @State private var isDiscovery = false
    
    @Binding var value: Double
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                VStack {
                    
                    ZStack {
                        
                        Image(oeuvre.picture)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 320, height: 250)
                            .background(.backgroundGray)
                            .clipped()
                        
                    }
                    
                    VStack {
                        
                        Text(oeuvre.name)
                            .font(.title3)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(.mainOrange)
                            .bold()
                            .padding(8)
                        
                        HStack {
                            
                            Text("Type :")
                                .font(.subheadline)
                                .bold()
                            
                            Text(oeuvre.type.rawValue)
                                .font(.subheadline)
                            
                        }
                        
                        HStack {
                            
                            Text("Artiste :")
                                .font(.subheadline)
                                .bold()
                            
                            Text(oeuvre.auteur)
                                .font(.subheadline)
                            
                        }
                        
                        HStack(alignment: .top) {
                            
                            Text("Localisation :")
                                .font(.subheadline)
                                .bold()
                            
                            VStack {
                                
                                Text("\(oeuvre.localisation) \(oeuvre.city)")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                    
                                
                            }
                        }
                        
                        HStack {
                            
                            Button {
                                
                                isDiscovery.toggle()
                                
                                if isDiscovery == true {
                                    value += 1
                                } else {
                                    value -= 1
                                }
                                
                            } label: {
                                
                                Image(systemName: "checkmark.seal")
                                    .foregroundStyle(isDiscovery ? .white : .black)
                                    .font(.title2)
                                    .padding(10)
                                    .background(isDiscovery ? .green : .white)
                                    .cornerRadius(100)
                                    .padding()
                            }
                            
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
                        
                        Spacer()
                    }
                    
                    .frame(width: 250)
                    
                }
                
            }
            .foregroundStyle(.mainText)
            .frame(width: 320, height: 480)
            .background(.backgroundGray)
            .cornerRadius(20)
        }
    }
}

#Preview {
    CardOeuvreView(oeuvre: oeuvres[0], value: .constant(0))
}
