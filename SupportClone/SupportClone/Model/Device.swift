//
//  Device.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 15/08/23.
//

import Foundation


struct Device: Identifiable {
    var name: String
    var image: String
    var deviceName: String
    var id = UUID()
}
