//
//  ScheduledTours.swift
//  TourMeApp-Final_project
//
//  Created by patron on 5/12/24.
//

import SwiftUI
struct ScheduledTours: View {
    @State private var showProfile: Bool = false
    @State private var showPackTours: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("bbbg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .edgesIgnoringSafeArea(.top)
                    .overlay(Text("Scheduled Tour").font(.largeTitle).foregroundColor(.white))
                
                if scheduledTours.isEmpty {
                    VStack {
                        ZStack {
                            Color.gray.opacity(0.2)
                                .cornerRadius(20)
                                .frame(height: 100)
                            
                            // Text View
                            Text("Your Don't have any scheduled Tours")
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding()
                            
                        }
                        .padding()
                        
                        Spacer()
                        
                        HStack(spacing: 20) {
                            // Checkout Button
                            Button("My Profile") {
                                self.showProfile.toggle()
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(8)
                            
                            // Add Package Button
                            Button("Tour Packages") {
                                self.showPackTours.toggle()
                            }
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(8)
                        }
                        Spacer()
                    }
                    .navigationDestination(isPresented: $showProfile) { // Navigation
                    }
                    .navigationDestination(isPresented: $showPackTours) {
                        TourPackages()
                            //.navigationBarHidden(true)
                            //.navigationBarBackButtonHidden(true)
                    }
                    
                }
            }
        }
    }
}

   struct ScheduledTours_Previews: PreviewProvider {
       static var previews: some View {
           ScheduledTours()
       }
   }
