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
            
            VStack(spacing: 10) {
                
                Image(art.picture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(4)
                    .background(student.getHouseColor(isDark: false))
                    .cornerRadius(100)
                    .shadow(radius: 8)
                
                Text(student.name)
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .bold()
                
                Text(student.house.rawValue.uppercased())
                    .font(.system(size: 14))
                    .foregroundStyle(student.getHouseColor(isDark: false))
                    .padding(.top, -8)
                
                
                Text("\(student.year)e année")
                    .fontWeight(.semibold)
                    .font(.system(size: 14))
                    .foregroundStyle(.white)
                    .padding(8)
                    .background(Color("\(student.house.rawValue.lowercased())"))
                    .cornerRadius(8)
            }
            
        }
        .padding()
        .foregroundStyle(.encre)
        .frame(width: 178, height: 205)
        .background(Color("\(student.house.rawValue.lowercased())").opacity(0.3))
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(student.getHouseColor(isDark: true).opacity(0.7), lineWidth: 2)
        )
        .cornerRadius(16)
        .shadow(radius: 8)
        
    }

}

#Preview {
    CardAuthorView()
}
