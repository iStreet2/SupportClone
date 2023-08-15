//
//  Locations.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import Foundation
import MapKit

class Locations{
    static var locations : [Location] = [
        Location(name: "Fast Shop By WeCare Shopping Pátio Higienópolis",
                 address: "Av. Higienópolis, 698 Lj 133 134",
                 city: "São Paulo",
                 state: "SP",
                 loja: "",
                 number: "01238-000",
                 phones: ["11 94033-2153","11 3033-5780"],
                 website: "wecare.repair",
                 km: 2.1,
                 location: CLLocationCoordinate2D(latitude: -23.54263, longitude: -46.65814)),
        Location(name: "RCI Telecom",
                 address: "Rua Voluntários Da Patria, 654",
                 city: "São Paulo",
                 state: "SP",
                 loja: "Lojas 2 E 3",
                 number: "02010-000",
                 phones: ["11 3588-0778"],
                 website: "",
                 km: 2.1,
                 location: CLLocationCoordinate2D(latitude: -23.51481, longitude: -46.62603)),
        Location(name: "iPlace Shopping Center Norte",
                 address: "Av. Otto Baumgart, 500 Lj Suc 316",
                 city: "São Paulo",
                 state: "SP",
                 loja: "",
                 number: "02049,900",
                 phones: ["11 221-0583"],
                 website: "",
                 km: 3.2,
                 location: CLLocationCoordinate2D(latitude: -23.51667, longitude: -46.61614)),
        Location(name: "a2YOU by STI Tecnologia Shopping Pátio Paulista",
                 address: "Rua Treze de Maio 1947, São Paulo",
                 city: "São Paulo",
                 state: "SP",
                 loja: "Lj 106",
                 number: "01327-0001",
                 phones: ["(11) 3791-1685","11 93289-9090"],
                 website: "stitech.com.br",
                 km: 4.5,
                 location: CLLocationCoordinate2D(latitude: -23.57076, longitude: -46.64362))
    ]
    
}
