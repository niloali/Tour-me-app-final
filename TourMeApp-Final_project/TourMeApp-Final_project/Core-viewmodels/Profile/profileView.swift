//
//  profileView.swift
//  TourMeApp-Final_project
//
//  Created by patron on 5/10/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var showRecentTours: Bool = false
    @State private var showSchTours: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("sfbg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .edgesIgnoringSafeArea(.top)
                    .overlay(
                        VStack(alignment: .center) {
                            Circle()
                                    .fill(Color.orange)
                                    .frame(width: 100, height: 100)
                            
                            Text("  User \n Europe")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                    )
                
                VStack {
                    ZStack {
                        Color.gray.opacity(0.2)
                            .cornerRadius(20)
                            .frame(height: 100)
                        
                        // Text View
                        Text("Tell something about your self")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                    }
                    .padding()
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        // Checkout Button
                        Button("Recent Tours") {
                            self.showRecentTours.toggle()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(8)
                        
                        // Add Package Button
                        Button("Scheduled Tours") {
                            self.showSchTours.toggle()
                        }
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(8)
                    }
                    
                    Spacer()
                }
            
            }
            .navigationDestination(isPresented: $showRecentTours) {
                RecentTours()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
            }
            .navigationDestination(isPresented: $showSchTours) {
                ScheduledTours()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    ProfileView()
}
