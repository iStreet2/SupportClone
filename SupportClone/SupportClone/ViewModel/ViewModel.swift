//
//  ViewModel.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 15/08/23.
//

import Foundation


class ViewModel: ObservableObject{
    
    @Published var devices: [Device]
    @Published var supportTopicsiPhone: [SupportTopic]
    @Published var products: [Product]
    
    init(){
        self.devices = Devices.devices
        self.supportTopicsiPhone = SupportTopics.supportTopicsiPhone
        self.products = Products.products
    }
    
    
}
