//
//  InputView.swift
//  TourMeApp-Final_project
//
//  Created by Fahim Amiri on 4/15/24.
//The reason why i have my input view on this folder
//is for the re use able purpose feel free to follow your own method on the page your going to  under take @Nilo. 
//these listed input field should us as standard for any inputfield in this project . 

import SwiftUI

struct InputView: View {
    @Binding
    var text: String
    let title: String
    let placeholder :String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(title)
                .foregroundStyle(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField{
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            else{
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            Divider()
        }
        
    }
}

#Preview {
    InputView(text: .constant(""), title: "Email", placeholder:"name@example.com")
}
