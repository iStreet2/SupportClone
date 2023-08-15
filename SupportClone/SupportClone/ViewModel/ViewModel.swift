//
//  ViewModel.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import Foundation


class ViewModel: ObservableObject {
    @Published var locations: [Location]

    init(){
        self.locations = Locations.locations
    }
    
}
