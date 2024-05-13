//
//  TourPackages.swift
//  TourMeApp-Final_project
//
//  Created by Nilo Ali on 5/2/24.
//

import SwiftUI

struct TourPackages: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Image("bbbg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .edgesIgnoringSafeArea(.top)
                    .overlay(Text("Tour Packages").font(.largeTitle).foregroundColor(.white))
                
                ScrollView {
                    LazyVStack(spacing: 40) {
                        ForEach(packageToursData) { tour in
                            NavigationLink {
                                TourPackageDetail(tour: tour) // Tour Package Detail Screen
//                                    .navigationBarHidden(true)
//                                    .navigationBarBackButtonHidden(true)
                            } label: {
                                TourCell(tour: tour) // each tour cell
                            }
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
    TourPackages()
}

