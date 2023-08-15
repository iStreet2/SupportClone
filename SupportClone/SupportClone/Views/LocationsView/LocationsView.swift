//
//  LocationView.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -23.54757, longitude: -46.65025), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        GeometryReader{ geometry in
            NavigationView{
                ZStack{
                    Map(coordinateRegion: $mapRegion)
                        .ignoresSafeArea()
                    HStack{
                        Button (action: {
                            
                        } ,label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(Color("Button"))
                                    .scaledToFit()
                                    .frame(width:40)
                                    .shadow(radius:1)
                                Image(systemName: "magnifyingglass")
                            }
                        })
                        Spacer()
                        Button (action: {

                        }, label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(Color("Button"))
                                    .frame(width:320,height:40)
                                    .shadow(radius:1)
                                HStack{
                                    Image(systemName: "list.bullet")
                                    Text("Show List")
                                }
                                
                            }
                        })
                    }
                    .padding()
                    .padding(.top,geometry.size.height/1.2)
                    
                }
                .navigationTitle("Repair Locations")
                .navigationBarTitleDisplayMode(.inline)
                .toolbarBackground(.visible, for: .navigationBar)
                .toolbarBackground(.ultraThinMaterial, for: .navigationBar)
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
