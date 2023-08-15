//
//  ViewModel.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 15/08/23.
//

import Foundation


class ViewModel: ObservableObject{
    
    @Published var devices: [Device]
    
    init(){
        self.devices = Devices.devices
    }
    
    
}
