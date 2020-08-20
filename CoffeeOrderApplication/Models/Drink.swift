//
//  Drink.swift
//  CoffeeOrderApplication
//
//  Created by Abhishek Kumar on 19/08/20.
//  Copyright © 2020 Abhishek. All rights reserved.
//

import SwiftUI


struct Drink : Hashable ,Codable , Identifiable {
    var id : Int
    var name : String
    var imageName : String
    var description : String
    var category : Category
    
    enum Category : String , Codable , CaseIterable , Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
