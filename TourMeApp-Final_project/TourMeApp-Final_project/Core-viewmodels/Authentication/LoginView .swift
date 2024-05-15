//
//  LoginView .swift
//  TourMeApp-Final_project
//
//  Created by Fahim Amiri on 4/15/24.
//

import SwiftUI

struct LoginView_: View {
    //need state binding
    @State private var email = ""
    @State private var password = ""
    @State private var showHome: Bool = false
    @State private var showAlert: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                //Image on the top
                //importing the image form our assets
                Image("icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 120)
                    .padding(.vertical, 32)
                //Text Inputs form feilds
                //imported or call like  a function form Input view along with its properties.
                VStack(spacing :24){
                    InputView(text: $email, title:"Email Address ", placeholder: "name@exmple.com",isSecureField: false)
                        .padding(.horizontal, 25.0)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    //passed form main view or inputview
                    InputView(text: $password,
                              title: "Password",
                              placeholder: "your password",isSecureField: true)
                    .padding(.horizontal, 25.0)
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //buttons are coded here
                //Sign in button
                Button {
                    if email == "test@gmail.com" && password == "test1234" {
                        self.showHome.toggle() // if this mock user then show home screen
                    } else {
                        self.showAlert = true // show alert dialogue
                    }
                }label: {
                    HStack{
                        Text("SIGN IN")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width-50, height: 48)
                }
                .background(password.isEmpty || email.isEmpty ? Color(.systemOrange).opacity(0.5) : Color(.systemOrange))        .disabled(password.isEmpty || email.isEmpty)
                .cornerRadius(10)
                .padding(.top,25 )
                //SIGN UP in button
//                Button {
//                    print("log user in..")
//                }label: {
//                    HStack{
//                        Text("SIGN UP")
//                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                    }
//                    .foregroundColor(.white)
//                    .frame(width: UIScreen.main.bounds.width-50, height: 48)
//                }
//                .background(Color(.systemOrange))
//                .cornerRadius(10)
//                .padding(.top, 5 )
                
                //give space for image.
                Spacer()
                
                //link button to sign up page
                
                NavigationLink{
                    //name of the page
                    RegistrationView()
                    //disable back button
                        .navigationBarBackButtonHidden(true)
                    //terms and agreement
                }label: {
                    HStack(spacing: 3){
                        Text("Don't have an account ")
                        Text("Sign Up")
                            .fontWeight(.bold)
                            .foregroundStyle(Color.gray)
                    }
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text("Username or password is incorrect. Please try again."),
                    dismissButton: .default(Text("OK"))
                )
            }
            .navigationDestination(isPresented: $showHome) {
                TourPackages()
                    .navigationBarHidden(true)
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

#Preview {
    LoginView_()
}
