//
//  ProductModel.swift
//  AsosShopList
//
//  Created by Genuine on 16.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import Foundation

struct ProductList:Codable{
    let products : [Product]
    struct Product:Codable {
        struct Price:Codable{
            struct Current:Codable{
                let text : String
            }
            let current : Current
        }
        let price : Price
        let id : Int //adding id property in case when you get image gallery (by id in products/v3/detail)
        let name : String
        let imageUrl : String
    }
}
