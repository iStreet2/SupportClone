//
//  Locations.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import Foundation
import MapKit

struct Location: Identifiable {
    
    var id = UUID()
    var name: String
    var address: String
    var city: String
    var state: String
    var loja: String
    var number: String
    var phones: [String]
    var website: String
    var km: Float
    var location: CLLocationCoordinate2D
    
}
