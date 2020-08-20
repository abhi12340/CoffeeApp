//
//  Data.swift
//  CoffeeOrderApplication
//
//  Created by Abhishek Kumar on 19/08/20.
//  Copyright © 2020 Abhishek. All rights reserved.
//

import Foundation

let drinkData : [Drink] =  load("drinks.json")

func load<T:Decodable>(_ filename : String , as type: T.Type = T.self) -> T {
    let data : Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't able to load \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch {
        fatalError("couldn't able to load \(filename) from main bundle \(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldn't parse data")
    }
}
