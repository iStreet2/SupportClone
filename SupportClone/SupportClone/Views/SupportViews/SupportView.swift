//
//  SupportView.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI

struct SupportView: View {
    @EnvironmentObject var vm: ViewModel
    @EnvironmentObject var pm: ProductsViewModel
    
    @State var showingSheetHelp = false
    @State var showingSheetDevices = false
    @State var showingSheetDevices_iPhone = false
    @State var showingSheetDevices_Mac = false
    @State var showingSheetSubscriptions = false
    @State var showingSeetServices = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    Button {
                        showingSheetHelp.toggle()
                    } label: {
                        VStack(alignment: .center) {
                            HStack {
                                Text("Tell us what's happening")
                                    .padding(.leading, 15)
                                Spacer()
                                Image(systemName: "mic.fill")
                                    .padding(.trailing, 15)
                            }
                            .foregroundColor(.gray)
                        }
                        .frame(width: 350, height: 40)
                        .background(Color("SquaresBG"))
                        .cornerRadius(10)
                    }
                    Divider()
                        .padding(.trailing)
                        .padding(.top, 5)
                }.padding(.leading, 25)
                
                VStack(alignment: .leading) {
                    Button() {
                        showingSheetDevices_iPhone.toggle()
                    } label: {
                        HStack {
                            Text("My Devices")
                                .fontWeight(.semibold)
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size:16))
                                .bold()
                        }
                        .font(.title2)
                        .foregroundColor(Color("Text"))
                    }
                    HStack {
                        ForEach(0 ..< vm.devices.count, id:\.self){ index in
                            NavigationLink {
                                MyDevicesView(pos: index)
                            } label: {
                                
                                ZStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 180, height: 180)
                                        .foregroundColor(Color("SquaresBG"))
                                    
                                    VStack {
                                        Image(vm.devices[index].image)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(height: 100)
                                        
                                        Text(vm.devices[index].name)
                                            .foregroundColor(Color("TextColor"))
                                        Text(vm.devices[index].deviceName)
                                            .foregroundColor(.gray)
                                    }
                                }
                            }
                        }
                        
                    }
                    
                    Divider()
                }
                .padding()
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Support Tools")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Image(systemName: "chevron.right")
                    }
                    
                    //                  Menage Subscription Button
                    Button {
                        showingSheetSubscriptions.toggle()
                    } label: {
                        HStack {
                            Image(systemName: "calendar.badge.plus")
                                .renderingMode(.original)
                                .foregroundColor(.red)
                                .font(.largeTitle)
                            Text("Manage Subscriptions")
                                .foregroundColor(Color("TextColor"))
                            Spacer()
                        }
                        .padding(.leading, 24)
                        .frame(width: 360, height: 70)
                        .background(Color("SquaresBG"))
                        .cornerRadius(10)
                    }
                    
                    //                  Reset Password Button
                    Button {
                        showingSheetSubscriptions.toggle()
                    } label: {
                        HStack {
                            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                                .renderingMode(.original)
                                .foregroundColor(Color(.systemBlue))
                                .font(.title)
                            Text("Reset Password")
                                .foregroundColor(Color("TextColor"))
                            Spacer()
                        }
                        .padding(.leading, 24)
                        .frame(width: 360, height: 70)
                        .background(Color("SquaresBG"))
                        .cornerRadius(10)
                    }
                    
                    //                  Check coverage But
                    Button {
                        showingSheetSubscriptions.toggle()
                    } label: {
                        HStack {
                            Image(systemName: "apple.logo")
                                .renderingMode(.original)
                                .foregroundColor(Color(.systemRed))
                                .font(.largeTitle)
                                .frame(width: 50, height: 50)
                                .background(Color("AppleLogoBG"))
                                .cornerRadius(10)
                            Text("Cheeck Coverage")
                                .foregroundColor(Color("TextColor"))
                            Spacer()
                        }
                        .padding(.leading, 24)
                        .frame(width: 360, height: 70)
                        .background(Color("SquaresBG"))
                        .cornerRadius(10)
                    }
                }
                
                Divider()
                    .padding(.horizontal)
                    .padding(.top, 5)
                
                VStack(alignment: .leading) {
                    Button {
                        showingSeetServices.toggle()
                    } label: {
                        HStack {
                            Text("My Services")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("TextColor"))
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("TextColor"))
                            Spacer()
                        }.padding(.leading)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("SquaresBG"))
                            .frame(width: 200, height: 140)
                        VStack {
                            Image(systemName: "icloud.fill")
                                .font(.largeTitle)
                                .frame(width: 55, height: 55)
                                .foregroundColor(Color(.systemBlue))
                                .background(.black)
                                .cornerRadius(15)
                                .padding(.horizontal)
                            Text("iCloud")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("TextColor"))
                            Text("1,84 GB de 5 GB usados")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal)
                }
                
                Divider()
                    .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("More Products")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color("TextColor"))
                        Image(systemName: "chevron.right")
                        
                        Spacer()
                    }.padding(.leading)
                    
                    
                    ScrollView(.horizontal){
                        HStack {
                            ForEach(pm.products.indices, id: \.self) { index in
                                Image(pm.products[index].prod)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Support")
        }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
            .environmentObject(ViewModel())
            .environmentObject(ProductsViewModel())
    }
}
