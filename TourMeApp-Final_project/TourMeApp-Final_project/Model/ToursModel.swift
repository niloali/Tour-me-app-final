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
    ToursModel(imageName: "Coit-Tower", likes: 100, dislikes: 5, tourPlaceName: "Coit Tower", cityName: "San Francisco", touredPeople: 1330, rank: 5, price: 200, duration: 2, description: "Coit Tower, an Art Deco landmark atop Telegraph Hill in San Francisco, offers panoramic views of the city and bay. Built in 1933 with funds from Lillie Hitchcock Coit, it features vibrant 1930s murals inside. A popular tourist spot, visitors can ride an elevator for iconic vistas including the Golden Gate Bridge. Surrounded by scenic gardens, Coit Tower is a symbol of San Francisco's charm and history.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Golden-Gate", likes: 120, dislikes: 30, tourPlaceName: "Golder Gate", cityName: "San Francisco", touredPeople: 700, rank: 1, price: 250, duration: 2, description: "The Golden Gate Bridge, an iconic symbol of San Francisco, spans across the Golden Gate Strait, connecting the city to Marin County. Its distinctive orange-red hue contrasts beautifully against the blue waters of the Pacific Ocean. Designed by engineer Joseph Strauss and architect Irving Morrow, it was completed in 1937 and was once the longest suspension bridge in the world. Its towering Art Deco towers stand at 746 feet tall, offering breathtaking panoramic views of the city skyline and the rugged coastline. Today, it remains one of the most photographed landmarks in the United States, drawing millions of visitors each year.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Twin-Peaks", likes: 250, dislikes: 12, tourPlaceName: "Twin Peaks", cityName: "San Francisco", touredPeople: 1230, rank: 4, price: 150, duration: 2, description: "Twin Peaks in San Francisco are two iconic hills offering stunning panoramic views of the city and beyond, rising nearly 925 feet above sea level. Accessible by car or foot, they attract visitors seeking breathtaking vistas of landmarks like the Golden Gate Bridge and downtown skyline. Popular for sunrise and sunset viewing, photography, and outdoor recreation, Twin Peaks also serve as a natural sanctuary amidst the urban landscape, with diverse flora and fauna adding to their allure. Whether day or night, a visit to Twin Peaks promises unforgettable views of San Francisco's beauty.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Lands-Ends", likes: 120, dislikes: 30, tourPlaceName: "Land Ends", cityName: "San Francisco", touredPeople: 700, rank: 2, price: 300, duration: 2, description: "Lands End, nestled along the rugged coastline of San Francisco, is a breathtaking natural destination offering stunning views of the Pacific Ocean and the Golden Gate Bridge. This coastal trail winds through cypress and eucalyptus groves, showcasing dramatic cliffs and hidden coves along the way. Visitors can explore historic landmarks such as the Sutro Baths ruins, remnants of a once-grand Victorian-era swimming complex, and the scenic Lands End Labyrinth. With its scenic beauty, diverse wildlife, and rich history, Lands End is a beloved spot for hiking, photography, and enjoying the beauty of San Francisco's natural landscape.", driverCharges: 100, taxAmount: 25)
]

let recectToursData: [ToursModel] = [
    ToursModel(imageName: "Coit-Tower", likes: 100, dislikes: 5, tourPlaceName: "Coit Tower", cityName: "San Francisco", touredPeople: 1330, rank: 5, price: 200, duration: 2, description: "Coit Tower, an Art Deco landmark atop Telegraph Hill in San Francisco, offers panoramic views of the city and bay. Built in 1933 with funds from Lillie Hitchcock Coit, it features vibrant 1930s murals inside. A popular tourist spot, visitors can ride an elevator for iconic vistas including the Golden Gate Bridge. Surrounded by scenic gardens, Coit Tower is a symbol of San Francisco's charm and history.", driverCharges: 100, taxAmount: 25),
    ToursModel(imageName: "Golden-Gate", likes: 120, dislikes: 30, tourPlaceName: "Golder Gate", cityName: "San Francisco", touredPeople: 700, rank: 1, price: 250, duration: 2, description: "The Golden Gate Bridge, an iconic symbol of San Francisco, spans across the Golden Gate Strait, connecting the city to Marin County. Its distinctive orange-red hue contrasts beautifully against the blue waters of the Pacific Ocean. Designed by engineer Joseph Strauss and architect Irving Morrow, it was completed in 1937 and was once the longest suspension bridge in the world. Its towering Art Deco towers stand at 746 feet tall, offering breathtaking panoramic views of the city skyline and the rugged coastline. Today, it remains one of the most photographed landmarks in the United States, drawing millions of visitors each year.", driverCharges: 100, taxAmount: 25)
]


var scheduledTours: [ToursModel] = []

