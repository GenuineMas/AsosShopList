//
//  ImageService.swift
//  AsosShopList
//
//  Created by Genuine on 18.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//


import UIKit

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
