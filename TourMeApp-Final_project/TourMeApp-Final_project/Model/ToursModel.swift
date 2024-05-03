//
//  ToursModel.swift
//  TourMeApp-Final_project
//
//  Created by Nilo Ali on 5/2/24.
//

import Foundation

struct ToursModel: Identifiable {
    let id = UUID()
    let imageName: String
    let likes: Int
    let dislikes: Int
    let tourPlaceName: String
    let cityName: String
    let touredPeople: Int
    let rank: Int
    let price: Int
    let duration: Int
    let description: String
    let driverCharges: Int
    let taxAmount: Int
}


let packageToursData: [ToursModel] = [
    ToursModel(imageName: "Coit-Tower", likes: 100, dislikes: 5, tourPlaceName: "Coit Tower", cityName: "San Francisco", touredPeople: 1330, rank: 5, price: 200, duration: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Golder-Gate", likes: 120, dislikes: 30, tourPlaceName: "Golder Gate", cityName: "San Francisco", touredPeople: 700, rank: 1, price: 250, duration: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Twin-Peaks", likes: 250, dislikes: 12, tourPlaceName: "Twin Peaks", cityName: "San Francisco", touredPeople: 1230, rank: 4, price: 150, duration: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Land-Ends", likes: 120, dislikes: 30, tourPlaceName: "Land Ends", cityName: "San Francisco", touredPeople: 700, rank: 2, price: 300, duration: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", driverCharges: 100, taxAmount: 25)
]

let recectToursData: [ToursModel] = [
    ToursModel(imageName: "Coit-Tower", likes: 100, dislikes: 5, tourPlaceName: "Coit Tower", cityName: "San Francisco", touredPeople: 1330, rank: 5, price: 200, duration: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Golder-Gate", likes: 120, dislikes: 30, tourPlaceName: "Golder Gate", cityName: "San Francisco", touredPeople: 700, rank: 1, price: 250, duration: 2, description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.", driverCharges: 100, taxAmount: 25)
]


var scheduledTours: [ToursModel] = []

