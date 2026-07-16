//
//  OeuvreRowView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import SwiftUI

struct OeuvreRowView: View {
    var oeuvre: Oeuvre
    
    var body: some View {
        HStack(spacing: 12) {
            
            Image(oeuvre.picture)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(.trailing, 5)
            
            VStack(alignment: .leading, spacing: 2) {
                
                Text(oeuvre.name)
                    
                HStack {
                    
                    Image(systemName: "mappin.circle.fill")
                    
                    Text(oeuvre.city)
                    
                }
                
                .font(.subheadline)
                .foregroundColor(.secondText)
                
            }
            
        }
        .padding(.vertical, 6)
        .cornerRadius(12)
        
    }
}


#Preview {
    OeuvreRowView(oeuvre: oeuvres[0])
}
