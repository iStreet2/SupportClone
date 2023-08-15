//
//  SupportView.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI

struct SupportView: View {
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
                        }
                        .font(.title2)
                        .foregroundColor(Color("TextColor"))
                    }
                    Button {
                        showingSheetDevices_Mac.toggle()
                    } label: {
                        HStack {
                            ZStack {
                                // TODO: NavigationLink
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 180, height: 180)
                                    .foregroundColor(Color("SquaresBG"))
                                
                                VStack {
                                    Image("iPhone")
                                        .resizable()
                                        .frame(width: 50, height: 100)
                                    
                                    Text("iPhone de XXX")
                                        .foregroundColor(Color("TextColor"))
                                    Text("This iPhone 13")
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            // TODO: NavigationLink
                            ZStack {
                                // TODO: NavigationLink
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 180, height: 180)
                                    .foregroundColor(Color("SquaresBG"))
                                
                                VStack {
                                    Image("Mac")
                                        .resizable()
                                        .frame(width: 140, height: 90)
                                    
                                    Text("Mac de XXX")
                                        .foregroundColor(Color("TextColor"))
                                    Text("MacBook Pro 14''")
                                        .foregroundColor(.gray)
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
                
                VStack {
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
                    
                    
                }
            }
            .navigationTitle("Support")
        }
    }
}

struct SupportView_Previews: PreviewProvider {
    static var previews: some View {
        SupportView()
    }
}
