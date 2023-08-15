//
//  SupportView.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI

struct SupportView: View {
    @EnvironmentObject var vm: ViewModel
    @State var showingSheetHelp = false
    @State var showingSheetDevices = false
    @State var showingSheetDevices_iPhone = false
    @State var showingSheetDevices_Mac = false
    @State var showingSheetSubscriptions = false
    
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
                            Spacer()
                        }
                        .padding(.leading, 24)
                        .frame(width: 360, height: 60)
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
                                .foregroundColor(Color(.systemPink))
                                .font(.largeTitle)
                            Text("Reset Password")
                            Spacer()
                        }
                        .padding(.leading, 24)
                        .frame(width: 360, height: 60)
                        .background(Color("SquaresBG"))
                        .cornerRadius(10)
                    }
                    
                    //                  Check coverage But
                    Button {
                        showingSheetSubscriptions.toggle()
                    } label: {
                        HStack {
                            Image(systemName: "calendar.badge.plus")
                                .renderingMode(.original)
                                .foregroundColor(Color(.systemPink))
                                .font(.largeTitle)
                            Text("Cheeck Coverage")
                            Spacer()
                        }
                        .padding(.leading, 24)
                        .frame(width: 360, height: 60)
                        .background(Color("SquaresBG"))
                        .cornerRadius(10)
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
    }
}
