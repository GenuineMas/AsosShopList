//
//  ProductTableViewCell.swift
//  AsosShopList
//
//  Created by Genuine on 17.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

        @IBOutlet weak var holderView: UIView!
        @IBOutlet weak var productImg: UIImageView!
        @IBOutlet weak var nameLbl: UILabel!
        @IBOutlet weak var priceLbl: UILabel!
        
        override func awakeFromNib() {
            super.awakeFromNib()
            holderView.layer.cornerRadius = 10
            productImg.layer.cornerRadius = productImg.frame.width / 2
            productImg.clipsToBounds = true
        }
        
    var item: ProductList.Product! {
            didSet {
                setProductData()
            }
        }

        private func setProductData() {
        //    productImg.image = UIImage(named: item.imageName)
            nameLbl.text = item.name
            priceLbl.text = item.price.current.text
        }
    }
