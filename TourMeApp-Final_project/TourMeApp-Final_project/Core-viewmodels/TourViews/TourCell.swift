//
//  TourCell.swift
//  TourMeApp-Final_project
//
//  Created by Nilo Ali on 5/2/24.
//

import SwiftUI

struct TourCell: View {
    let tour: ToursModel
    
    var body: some View {
        VStack {
            HStack {
                Image(tour.imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 120, height: 120)
                
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(tour.tourPlaceName)
                            .foregroundStyle(Color.orange)
                        Text(tour.cityName)
                            .foregroundStyle(.black)
                        HStack(spacing: 10) {
                            TourDetailItem(value: "\(tour.touredPeople)", label: "Toured")
                            TourDetailItem(value: "\(tour.likes)", label: "Likes")
                            TourDetailItem(value: "\(tour.dislikes)", label: "Dislikes")
                        }
                        .foregroundStyle(.black)
                    }
                    Spacer()
                    Text("\(tour.rank)")
                        .foregroundStyle(.black)
                        .padding(.trailing)
                }
            }
        }
    }
}

struct TourDetailItem: View {
    let value: String
    let label: String
    
    var body: some View {
        VStack(spacing: -2) {
            Text(value)
            Text(label)
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    TourCell(tour:  ToursModel(imageName: "Coit-Tower", likes: 100, dislikes: 5, tourPlaceName: "Coit Tower", cityName: "San Francisco", touredPeople: 1330, rank: 5, price: 200, duration: 3, description: "Coit Tower, an Art Deco landmark atop Telegraph Hill in San Francisco, offers panoramic views of the city and bay. Built in 1933 with funds from Lillie Hitchcock Coit, it features vibrant 1930s murals inside. A popular tourist spot, visitors can ride an elevator for iconic vistas including the Golden Gate Bridge. Surrounded by scenic gardens, Coit Tower is a symbol of San Francisco's charm and history.", driverCharges: 100, taxAmount: 25))
}
