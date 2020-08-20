//
//  DrinkRow.swift
//  CoffeeOrderApplication
//
//  Created by Abhishek Kumar on 20/08/20.
//  Copyright © 2020 Abhishek. All rights reserved.
//

import SwiftUI

struct DrinkRow: View {
    var categoryName : String
    var drinks : [Drink]
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach(drinks, id: \.name) { drink in
                        NavigationLink(destination: DrinksDetails(drink: drink)) {
                            DrinkItem(drink: drink)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                        
                    }
                }
            }
        }
        .padding(.top ,10)
        
    }
}

struct DrinkRow_Previews: PreviewProvider {
    static var previews: some View {
        DrinkRow(categoryName: "HOT Drinks", drinks: drinkData)
    }
}
