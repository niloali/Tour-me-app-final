//
//  CheckOutView.swift
//  TourMeApp-Final_project
//
//  Created by Nilo Ali on 5/2/24.
//

import SwiftUI

struct CheckOutView: View {
    @State private var cardNumber = ""
    @State private var dateAndYear = ""
    @State private var cvv = ""
    @State private var name = ""
    @State private var showSch: Bool = false
    
    let tour: ToursModel
    
    var body: some View {
        NavigationView {
            VStack {
                Image("bbbg")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 200)
                    .edgesIgnoringSafeArea(.top)
                
                ScrollView {
                    LazyVStack(spacing: 10) {
                        // Tour Details
                        VStack {
                            HStack {
                                Text("\(tour.tourPlaceName) Tour")
                                Spacer()
                                Text("$\(tour.price)")
                            }
                            
                            HStack {
                                Text("Driver")
                                Spacer()
                                Text("$\(tour.driverCharges)")
                            }
                            
                            HStack {
                                Text("Tax")
                                Spacer()
                                Text("$\(tour.taxAmount)")
                            }
                            
                            Divider()
                                .background(
                                    GeometryReader { geometry in
                                        Rectangle()
                                            .fill(Color.black)
                                            .frame(width: geometry.size.width, height: 1)
                                    }
                                )
                            
                            HStack {
                                Text("Total Amount")
                                Spacer()
                                Text("$\(totalAmount())")
                            }
                            
                        }
                        .padding(.horizontal, 40)
                        
                        // Payment Options
                        HStack {
                            PaymentButton(title: "Credit", action: {})
                            PaymentButton(title: "Debit", action: {})
                            PaymentButton(title: "PayPal", action: {})
                            PaymentButton(title: "Stripe", action: {})
                        }
                        
                        // Payment Inputs
                        VStack(spacing: -10) {
                            PaymentTextField(text: $cardNumber, placeholder: "Card Number")
                            HStack {
                                PaymentTextField(text: $dateAndYear, placeholder: "Month/Year")
                                PaymentTextField(text: $cvv, placeholder: "CVV")
                            }
                            PaymentTextField(text: $name, placeholder: "Name of Card Holder")
                        }
                        
                        // Pay Button
                        Button("Pay") {
                            showSch.toggle()
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(15)
                        .disabled(cardNumber.isEmpty || cvv.isEmpty || name.isEmpty || dateAndYear.isEmpty)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                }
            }
            .navigationDestination(isPresented: $showSch) {
                ScheduledTours()
                    //.navigationBarHidden(true)
                    //.navigationBarBackButtonHidden(true)
            }
        }
    }
    
    private func totalAmount() -> Int {
        return tour.price + tour.driverCharges + tour.taxAmount
    }
}

struct PaymentButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(title, action: action)
            .padding()
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(8)
    }
}

struct PaymentTextField: View {
    @Binding var text: String
    let placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
            .padding()
    }
}



