//
//  Webservice.swift
//  AsosShopList
//
//  Created by Genuine on 16.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift
import RxAlamofire

class NetworkManager {
var headers = [
    "x-rapidapi-host": "asos2.p.rapidapi.com",
    "x-rapidapi-key": "f3b5951342msh4a44561c74c84bcp185c8ejsna6390b3b6324"
]
//    func fetchProducts() { AF.request("https://rapidapi.p.rapidapi.com/products/v2/list?offset=0&categoryId=4208&limit=48&store=US&country=US&currency=USD&sort=freshness&lang=en-US&sizeSchema=US", headers: [
//         "x-rapidapi-host": "asos2.p.rapidapi.com",
//         "x-rapidapi-key": "f3b5951342msh4a44561c74c84bcp185c8ejsna6390b3b6324"
//     ])
//         .responseDecodable(of:ProductList.self) { response in
//             guard let products = response.value else { return }
//             print(products)
//             debugPrint(response)
//         }
//     }
//
}

