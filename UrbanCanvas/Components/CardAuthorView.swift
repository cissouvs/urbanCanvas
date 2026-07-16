//
//  CardAuthorView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 03/07/2026.
//

import SwiftUI

struct CardAuthorView: View {
    
    var author: Author
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                Image(author.profilePicture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .background(.backgroundGray)
                    .cornerRadius(100)
                
                Text(author.name)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.mainOrange)
                    .bold()
                    .padding(8)
                
                HStack {
                    
                    Text("Age :")
                        .font(.subheadline)
                        .bold()
                    
                    Text("\(author.age) ans")
                        .font(.subheadline)

                }
                
                HStack {
                    
                    Text("Origines :")
                        .font(.subheadline)
                        .bold()
                    
                    Text(author.origin)
                        .font(.subheadline)

                }
                
                HStack {
                    
                    Text("Style :")
                        .font(.subheadline)
                        .bold()
                    
                    Text(author.style)
                        .font(.subheadline)

                }

                Button(action: {
                    
                    if let url = URL(string: author.url) {
                        UIApplication.shared.open(url)
                    }
                    
                }) {
                    
                    Text("Site Web")
                        .foregroundStyle(.white)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 30)
                        .background(.secondOrange)
                        .cornerRadius(100)
                        .padding(.top)
                    
                }
            
            }
            
        }
        .padding()
        .foregroundStyle(.mainText)
        .frame(width: 178, height: 270)
        .background(.white)
        .cornerRadius(20)
        
    }

}

#Preview {
    CardAuthorView(author: authors[6])
}
