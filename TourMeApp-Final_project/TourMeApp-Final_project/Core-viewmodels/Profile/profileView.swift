//
//  profileView.swift
//  TourMeApp-Final_project
//
//  Created by patron on 5/10/24.
//

import SwiftUI

struct profileView: View {
    @State private var textarea: String = ""
    @State private var isEditing: Bool = false
     
      
      var body: some View {
          ZStack(alignment: .top) {
              // Background Image
              Image("sfbg")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(height: 250)
                  .edgesIgnoringSafeArea(.top) // Ignore safe area to cover the top space
              
              VStack (spacing: 10) {
                  // Profile Image
                  Image("") // Place your image name here
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .frame(width: 120, height: 120)
                      .clipShape(Circle())
                      .colorMultiply(.black)
                      .overlay(Circle().stroke(Color.white, lineWidth: 4 ))
                      .shadow(radius: 10)
                  
                  // User name and location
                  Text("Fahim")
                      .font(.system(size: 20, weight: .bold))
                      .foregroundStyle(.white)
                  Text("San Francisco")
                      .font(.subheadline)
                      .bold()
                      .foregroundStyle(.white)
                      .tracking(1.7)
                  
                  // Text field area for descriptions
                  TextField("", text: $textarea)
                      .frame(width: 330, height: 250)
                      .background(Color(#colorLiteral(red: 0.8274509907, green: 0.8274509907, blue: 0.8274509907, alpha: 0.5))) // Set even lighter background color
                      .cornerRadius(15)
                      .padding(.leading)
                      .padding(.top)
                      .overlay(
                          VStack(alignment: .leading, spacing: 0) {
                              if textarea.isEmpty && !isEditing {
                                  Text("Tell us about yourself")
                                      .foregroundColor(.black)
                                      .padding(.top, 25)
                                      .padding(.leading, 25)
                                      .multilineTextAlignment(.leading)
                                      .frame(maxWidth: .infinity, alignment: .leading)
                              }
                          },
                          alignment: .topLeading
                      )
                      .padding(.top, 50)
                  
                  HStack {
                      Spacer(minLength: 30) // Add space from the screen frame
                      
                      // Recent Tours button linked to RecentTours
                      NavigationLink(destination: RecentTours()) {
                          Text("Recent Tours")
                              .frame(maxWidth: .infinity)
                              .padding(.vertical, 27)
                              .background(Color.orange)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .bold()
                      }
                      
                      Spacer(minLength: 2) // Add minimum length to the spacer between the buttons
                      
                      Button(action: {
                          // Action for the second button
                      }) {
                          Text("Schedule Tours")
                              .frame(maxWidth: .infinity)
                              .padding(.vertical, 27)
                              .background(Color.orange)
                              .foregroundColor(.white)
                              .cornerRadius(8)
                              .bold()
                      }
                      .padding(.leading, 10) // Add spacing between buttons
                      
                      Spacer(minLength: 30) // Add space from the screen frame
                  }
                  .padding(.horizontal, 40) // Add horizontal padding to center the buttons
                  .padding(.top, 50) // Add top padding
                  
                  Spacer()
              }
          }
      }
  }

#Preview {
    profileView()
}
