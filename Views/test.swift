//
//  test.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 02/07/2026.
//

import SwiftUI
import SafariServices

struct testView: View {
    
    
     
    var body: some View {
        
        VStack {
            
            Button("Ouvrir le site") {
                        if let url = URL(string: "https://www.instagram.com/lulagoce/?hl=fr") {
                            UIApplication.shared.open(url)
                        }
                    }
            
            Link("Ouvrir OpenAI", destination: URL(string: "https://www.instagram.com/lulagoce/?hl=fr")!)
            
            

            
        }
    }
}

#Preview {
    testView()
}
