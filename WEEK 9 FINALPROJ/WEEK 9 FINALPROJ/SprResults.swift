//
//  SprResults.swift
//  WEEK 9 FINALPROJ
//
//  Created by Kennon Cummings on 12/12/23.
//

import SwiftUI

struct SprResults: View {
    
    @EnvironmentObject var seasonScores : SeasonScores
    @State private var navPath = NavigationPath()
    
    var body: some View {
        VStack {
            Text("Spring")
            // Text("You scored \(SeasonScores.springScore) Spring answers!")
                .font(
                    Font.custom("Kanit", size: 96)
                        .italic()
                )
                .foregroundColor(Color(red: 0.01, green: 0.45, blue: 0.16))
                .frame(width: 307, height: 118, alignment: .topLeading)
                .background(
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 381, height: 186)
                        .background(Color(red: 0.48, green: 0.89, blue: 0.44))
                        .cornerRadius(56)
                )
            
                .padding(30)
            
            Text("- Thrives in change\n- Brings positivity to every conversation\n - Picnic organizer")
                .font(Font.custom("Jockey One", size: 40))
                .foregroundColor(Color(red: 0.05, green: 0.34, blue: 0.11))
                .frame(width: 368, height: 252, alignment: .leading)
                .background(
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 377, height: 240)
                        .background(Color(red: 1, green: 0.98, blue: 0.84))
                        .cornerRadius(24)
                )
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 377, height: 325)
                .background(
                    Image("springRes")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 397, height: 325)
                        .clipped()
                )
                .cornerRadius(36)
            
        }   .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
            .background(Color(red: 0.85, green: 0.96, blue: 0.84))
        
    }
    
}
    
    #Preview {
        SprResults()
           .environmentObject(SeasonScores())
    }
