//
//  Appetizer.swift
//  Appetizers
//
//  Created by Samantha Cannillo on 9/22/23.
//

import Foundation

struct Appetizer: Decodable {
    
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(
        id: 1,
        name: "Chicken Nugget",
        description: "Crispy and juicy.",
        price: 9.99, 
        imageURL: "",
        calories: 650,
        protein: 6,
        carbs: 1
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
