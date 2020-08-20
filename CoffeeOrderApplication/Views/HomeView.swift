//
//  ContentView.swift
//  CoffeeOrderApplication
//
//  Created by Abhishek Kumar on 19/08/20.
//  Copyright © 2020 Abhishek. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    
    var categories: [String : [Drink]] {
        .init(grouping: drinkData,
              by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
        NavigationView {
            List(categories.keys.sorted(), id: \String.self) { key in
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key] ?? [Drink]())
                    .padding(.top)
                    .padding(.bottom)
            }
        .navigationBarTitle(Text("COFFEE LOVERS"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
