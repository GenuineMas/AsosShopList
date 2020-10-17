//
//  AsosShopViewModel.swift
//  AsosShopList
//
//  Created by Genuine on 17.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import Alamofire

class ShopViewModel {
    //Put your key here
    let items = PublishSubject<[ProductList.Product]>()
    var headers = [
        "x-rapidapi-host": "asos2.p.rapidapi.com",
        "x-rapidapi-key": "f3b5951342msh4a44561c74c84bcp185c8ejsna6390b3b6324"
        ] as HTTPHeaders?
    
    func fetchProductList() {
        //did some network call here
        
        AF.request("https://rapidapi.p.rapidapi.com/products/v2/list?offset=0&categoryId=4208&limit=48&store=US&country=US&currency=USD&sort=freshness&lang=en-US&sizeSchema=US", headers: headers)
            .responseDecodable(of:ProductList.self) { response in
                guard let products = response.value else { return }
                self.items.onNext(products.products)//sending our product objects for binding to TableView
                self.items.onCompleted() //terminating publish subject
                print(products)
                debugPrint(response)
        }
    }
    
}
