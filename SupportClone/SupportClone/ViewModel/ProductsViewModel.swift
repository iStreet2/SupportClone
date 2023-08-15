//
//  DevicesViewModel.swift
//  SupportClone
//
//  Created by Raphael Iniesta Reis on 15/08/23.
//

import Foundation

class ProductsViewModel: ObservableObject{
    
    @Published var products: [Product]
    
    init(){
        self.products = Products.products
    }
    
    
}
