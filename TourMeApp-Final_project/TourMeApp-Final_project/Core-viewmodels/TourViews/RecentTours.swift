//
//  RecentTours.swift
//  TourMeApp-Final_project
//
//  Created by Nilo Ali on 5/2/24.
//

import SwiftUI

// recent view
struct RecentTours: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("bbbg") // top image ignoring the safe area from top
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .edgesIgnoringSafeArea(.top)
                    .overlay(Text("Recent Tours").font(.largeTitle).foregroundColor(.white)) // overlay text
                
                ScrollView {
                    LazyVStack(spacing: 40) {
                        ForEach(recectToursData) { tour in
                            TourCell(tour: tour) // recent tours cell
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    RecentTours()
}

