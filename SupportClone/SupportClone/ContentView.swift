//
//  ContentView.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Group{
                SupportView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2.fill")
                        Text("Support")
                    }
                LocationsView()
                    .tabItem {
                        Image(systemName: "mappin.and.ellipse")
                        Text("Locations")
                    }
                ActivitieView()
                    .tabItem{
                        Image(systemName: "clock")
                        Text("Activity")
                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(.ultraThinMaterial, for: .tabBar)
        }
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
