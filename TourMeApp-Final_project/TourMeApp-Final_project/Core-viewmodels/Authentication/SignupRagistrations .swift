//
//  SignupRagistrations .swift
//  TourMeApp-Final_project
//
//  Created by Fahim Amiri  on 4/15/24.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var emial  = ""
    @State var fullname = ""
    @State var password = ""
    @State var conPassword = ""
    @Environment(\.dismiss)var dismiss
    
    var body: some View {
        Image("icon")
            .resizable()
            .scaledToFit()
            .frame(width: 150, height: 120)
            .padding(.vertical, 32)
        VStack(spacing: 24)
        {
            //email input
            InputView(text: $emial,
                      title: "Email Address",
                      placeholder: "name@example.com", isSecureField: false)
            //fullname  input
            InputView(text: $fullname,
                      title: "Name ",
                      placeholder: "Your Full Name ", isSecureField: false)
            //pass  input
            InputView(text: $password,
                      title: "Password ",
                      placeholder: "Password  ",
                      isSecureField: true)
            //confpass  input
            InputView(text: $conPassword,
                      title: "Confirm Password ",
                      placeholder: "Confirm Password ",
                      isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12 )
        
        //button
        Button{
            print("Signing up .. ")
        }label:{
            HStack{
                Text("SIGN UP")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width-50, height: 48)
        }
        .background(Color(.systemOrange))
        .cornerRadius(10)
        .padding(.top, 25 )
        
        Spacer()
        Button{
            dismiss()
        }label: {
            HStack(spacing: 3){
                Text("Already have an account?")
                Text ("Sign In")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(Color.gray)
            }
            .font(.system(size:14))
            .foregroundColor(Color.gray)
        }
    }
}


#Preview {
    RegistrationView()
}
