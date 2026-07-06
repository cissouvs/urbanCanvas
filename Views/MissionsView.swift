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
        
        if discovery == 5 {
            
        } else {
            
            VStack {
                
                VStack {
                    if discovery == 0 {
                        Text ("\(Int(discovery)) sur 5")
                            .foregroundStyle(.secondary)
                        
                    } else if discovery == 1 {
                        Text ("\(Int(discovery)) sur 5")
                            .foregroundStyle(.secondary)

                    } else if discovery == 2 {
                        Text ("\(Int(discovery)) sur 5")
                            .foregroundStyle(.secondary)
                        
                    } else if discovery == 3 {
                        Text ("\(Int(discovery)) sur 5")
                            .foregroundStyle(.secondary)
                        
                    } else if discovery == 4 {
                        Text ("\(Int(discovery)) sur 5")
                            .foregroundStyle(.secondary)
                        
                    } else if discovery == 5 {
                        Text ("\(Int(discovery)) sur 5")
                            .foregroundStyle(.secondary)
                    }
                    
                    Slider(value: $discovery, in: 0...5, step: 1)
                    
                }
                
                TabView(selection: $currentTabIndex) {
                    
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


#Preview {
    MissionsView(currentTabIndex: 0, )
}
