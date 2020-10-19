//
//  ViewController.swift
//  AsosShopList
//
//  Created by Genuine on 16.10.2020.
//  Copyright © 2020 Genuine. All rights reserved.
//

import UIKit
import Alamofire
import RxSwift
import RxCocoa

class ProductViewController: UITableViewController{

    private let bag = DisposeBag()
    private let viewModel = ShopViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = nil
        tableView.delegate = nil
        tableView.rx.setDelegate(self).disposed(by: bag)
        bindTableView()
        DispatchQueue.main.async {
                   self.tableView.reloadData()
                              }
    }
    
    private func bindTableView() {
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "cellId")
        
        viewModel.items.bind(to: tableView.rx.items(cellIdentifier: "cellId", cellType: ProductTableViewCell.self)) { (row,item,cell) in
            cell.item = item
        }.disposed(by: bag)
        
        tableView.rx.modelSelected(ProductList.Product.self).subscribe(onNext: { item in
            print("SelectedItem: \(item.name)")
        }).disposed(by: bag)
        
        viewModel.fetchProductList()
        DispatchQueue.main.async {
            self.tableView.reloadData()
                       }

    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 150
      }
}



