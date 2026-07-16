//
//  MissionsView.swift
//  UrbanCanvas
//
//  Created by apprenant92 on 06/07/2026.
//

import SwiftUI

struct MissionsView: View {
    
    @State var currentTabIndex: Int
    
    @State var discovery: Double = 0
    
    //    func fitleredOeuvres() -> [Oeuvre] {
    //            if let houseFilter {
    //                return students.filter { student in student.house == houseFilter }
    //            } else {
    //                return students
    //            }
    //        }
    
    var body: some View {
        
        NavigationStack {
            
            if discovery == 5 {
                
                CardFinishTaskView()
                
            } else {
                
                VStack(alignment: .center) {
                    
                    ProgressView("\(Int(discovery)) sur 5", value: discovery, total: 5.0)
                    
                    TabView {
                        
                        ForEach(oeuvres) { oeuvre in
                            
                            CardOeuvreView(oeuvre: oeuvre, value: $discovery)
                                .tag(oeuvre)
                            
                        }
                    }
                    
                    .tabViewStyle(.page)
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                    
                }
            }
        }
    }
}


#Preview {
    MissionsView(currentTabIndex: 0)
}
