//
//  ViewModel.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 15/08/23.
//

import Foundation


class ViewModel: ObservableObject{
    
    @Published var devices: [Device]
    @Published var supportTopics: [SupportTopic]
    
    init(){
        self.devices = Devices.devices
        self.supportTopics = SupportTopics.supportTopics
    }
    
    
}
