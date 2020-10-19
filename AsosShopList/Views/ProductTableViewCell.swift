//
//  ProductTableViewCell.swift
//  AsosShopList
//
//  Created by Genuine on 17.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    private let viewModel = ShopViewModel()
    
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
        guard let url = URL(string:"http://"+item.imageUrl) else { return  }
        nameLbl.text = item.name
        priceLbl.text = item.price.current.text
        productImg.load(url: url )
    }
}
