//
//  GlobalAuthorView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 03/07/2026.
//

import SwiftUI

struct GlobalAuthorView: View {
    
    var columns = [ GridItem(.flexible()), GridItem(.flexible())]
    
    var author: Author
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                Color.backgroundGray
                    .ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        
                        ForEach(authors) { author in
                            
                                CardAuthorView(author: author)
                            
                            }
                        }
                    }
                .padding(.top, 35)
                .padding(.horizontal)
                }
                
            }
            
        }
    }
#Preview {
    GlobalAuthorView(author: authors[0])
}
