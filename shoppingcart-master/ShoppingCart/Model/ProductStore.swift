//
//  ProductStore.swift
//  ShoppingCart
//
//  Created by Darkhan Ilyas on 7/02/20.
//

import UIKit

class Product {
    
    var title: String
    var price: Double
    var quantity: Int
    
    init(title: String, price: Double, quantity: Int) {
        self.title = title
        self.price = price
        self.quantity = quantity
    }
    
    func setQuantity (quantity: Int) {
        self.quantity = quantity
    }
}

class ProductStore {
    
    var products: [Product] = [
        Product(title: "iPad Pro", price: 599,  quantity: 0),
        Product(title: "Apple Watch", price: 299, quantity: 0),
        Product(title: "Apple TV", price: 199, quantity: 0)
    ]
    
    func getPositionByName(title: String) -> Int? {
        for i in 0...products.count-1 {
            if products[i].title == title {
                return i
            }
        }
        return nil
    }
    
    func getPriceByName(title: String) -> Double? {
        for product in products {
            if product.title == title {
                return product.price
            }
        }
        return nil
    }
    
    func calculateTotal() -> Double {
        var totalValue: Double = 0
        
        for product in products {
            totalValue += Double(product.quantity) * product.price
        }
        
        return totalValue
    }
}
