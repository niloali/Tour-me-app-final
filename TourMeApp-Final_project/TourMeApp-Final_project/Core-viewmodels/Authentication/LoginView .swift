//
//  LoginView .swift
//  TourMeApp-Final_project
//
//  Created by Fahim Amiri on 4/15/24.
//

import SwiftUI

struct LoginView_: View {
    // Need state bindings
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                // Image on the top
                Image("icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 120)
                    .padding(.vertical, 32)
                
                // Text Inputs form fields
                VStack(spacing: 24) {
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com", isSecureField: false)
                        .padding(.horizontal, 25.0)
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "Your password", isSecureField: true)
                        .padding(.horizontal, 25.0)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                // Sign in button
                
                    Button {
                        print("log user in..")
                    } label: {
                        NavigationLink(destination: profileView()) {
                        HStack {
                            Text("SIGN IN")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 48)
                    }
                    .background(Color(.systemOrange))
                    .cornerRadius(10)
                    .padding(.top, 25)
                }
                
                // SIGN UP button
                Button {
                    print("log user in..")
                } label: {
                    NavigationLink(destination: RegistrationView()){
                        HStack {
                            Text("SIGN UP")
                                .fontWeight(.bold)
                        }
                        .foregroundColor(.white)
                        .frame(width: UIScreen.main.bounds.width - 50, height: 48)
                    }
                    .background(Color(.systemOrange))
                    .cornerRadius(10)
                    .padding(.top, 5)
                }
                Spacer()
                
                // Link button to sign up page
                NavigationLink(destination: RegistrationView()) {
                    HStack(spacing: 3) {
                        Text("Don't have an account ")
                        Text("Sign Up")
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                }
            }
        }
    }
}

#Preview {
    LoginView_()
}
