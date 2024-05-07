//
//  TourPackageDetail.swift
//  TourMeApp-Final_project
//
//  Created by Nilo Ali on 5/2/24.
//

import SwiftUI

struct TourPackageDetail: View {
    @State private var showCheckOut: Bool = false
    let tour: ToursModel
    
    var body: some View {
        NavigationView {
            VStack {
                Image("bbbg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 150)
                    .edgesIgnoringSafeArea(.top)
                    .overlay(Text("Tour Package").font(.largeTitle).foregroundColor(.white).offset(y: -20))
                
                ScrollView {
                    LazyVStack(spacing: 40) {
                        VStack {
                            HStack {
                                Image(tour.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 120, height: 120)
                                
                                VStack(alignment: .leading) {
                                    HStack {
                                        VStack(alignment: .leading, spacing: 0) {
                                            Text(tour.tourPlaceName)
                                                .foregroundStyle(Color.orange)
                                            Text(tour.cityName)
                                                .foregroundStyle(.black)
                                        }
                                        Spacer()
                                        Text("$\(tour.price)")
                                            .foregroundStyle(.black)
                                            .padding(.trailing)
                                    }
                                    Text("Duration of Tour: \(tour.duration) hours")
                                }
                            }
                        }
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(20)
                        
                        
                        ZStack {
                            Color.gray.opacity(0.2)
                                .cornerRadius(10)
                            
                            // Text View
                            Text(tour.description)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding()
                                .fixedSize(horizontal: false, vertical: true) // Allow multiline text wrapping
                        }
                        
                        // HStack containing buttons
                        HStack(spacing: 20) {
                            // Checkout Button
                            Button("Checkout") {
                                self.showCheckOut.toggle()
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(8)
                            
                            // Add Package Button
                            Button("Add to List") {
                               
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(8)
                        }
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
            }
            .navigationDestination(isPresented: $showCheckOut) {
                CheckOutView(tour: tour)
                    //.navigationBarHidden(true)
                    //.navigationBarBackButtonHidden(true)
            }
//            .navigationDestination(isPresented: $showHome) {
//                TourPackages()
//                    .navigationBarHidden(true)
//                    .navigationBarBackButtonHidden(true)
//            }
        }
    }
}

#Preview {
    TourPackageDetail(tour:  ToursModel(imageName: "Coit-Tower", likes: 100, dislikes: 5, tourPlaceName: "Coit Tower", cityName: "San Francisco", touredPeople: 1330, rank: 5, price: 200, duration: 3, description: "Coit Tower, an Art Deco landmark atop Telegraph Hill in San Francisco, offers panoramic views of the city and bay. Built in 1933 with funds from Lillie Hitchcock Coit, it features vibrant 1930s murals inside. A popular tourist spot, visitors can ride an elevator for iconic vistas including the Golden Gate Bridge. Surrounded by scenic gardens, Coit Tower is a symbol of San Francisco's charm and history.", driverCharges: 100, taxAmount: 25))
}

