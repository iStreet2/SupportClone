//
//  NearbyLocationsView.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI

struct NearbyLocationsView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack(alignment:.leading){
            VStack(alignment: .leading){
                HStack{
                    Image(systemName: "magnifyingglass.circle.fill")
                        .font(.system(size:40))
                        .foregroundColor(.gray)
                    VStack(alignment: .leading,spacing: 0){
                        HStack{
                            Text("Nearby Locations")
                                .font(.title2)
                                .bold()
                            Spacer()
                            Button {
                                
                            } label: {
                                Image(systemName: "xmark.circle")
                                    .font(.system(size:30))
                                    .foregroundColor(.gray)
                            }
                        }
                        Button {
                            
                        } label: {
                            Text("Edit Search")
                        }
                    }
                    
                }
                ZStack{
                    Button {
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius:30)
                                .stroke(.gray, lineWidth: 0.5)
                                .frame(width:150,height:30)
                            Text("Product")
                                .font(.system(size:14))
                                .foregroundColor(Color("Text"))
                        }
                    }

                    
                }
                
            }
            Spacer()
            Divider()
            List{
                ForEach(0 ..< vm.locations.count, id: \.self){ index in
                    VStack{
                        HStack(alignment:.top){
                            Text(vm.locations[index].name)
                                .bold()
                            Spacer()
                            Text("\(vm.locations[index].km, specifier: "%.1f") km")
                                .font(.system(size:12).weight(.light))
                        }
                    }
                }
            }
            //            .listStyle(GroupedListStyle())
        }
        .padding()
    }
}

struct NearbyLocationsView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyLocationsView()
            .environmentObject(ViewModel())
    }
}
