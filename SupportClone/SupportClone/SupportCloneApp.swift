//
//  SupportCloneApp.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI

@main
struct SupportCloneApp: App {
    @StateObject var vm = ViewModel()
    @StateObject var pm = ProductsViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
                .environmentObject(pm)
        }
    }
}
