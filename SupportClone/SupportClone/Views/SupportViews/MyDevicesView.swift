//
//  MyDevicesView.swift
//  SupportClone
//
//  Created by Raphael Iniesta Reis on 15/08/23.
//

import SwiftUI

struct MyDevicesView: View {
    @EnvironmentObject var vm : ViewModel
    @Environment(\.defaultMinListRowHeight) var rowHeight
    var pos: Int
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    VStack(spacing:0){
                        Image(vm.devices[pos].image)
                            .resizable()
                            .scaledToFit()
                            .frame(height:100)
                            .shadow(radius:1)
                        Text(vm.devices[pos].name)
                            .bold()
                            .font(.title2)
                        Text(vm.devices[pos].deviceName)
                            .font(.system(size:14).weight(.light))
                        Text("Limited Warranty")
                            .font(.system(size:14).weight(.light))
                        Button {
                            
                        } label: {
                            Text("Device Details")
                                .font(.system(size:14).weight(.light))
                        }
                        
                    }
                    HStack{
                        Text("Support Topics")
                            .bold()
                            .font(.title3)
                        Spacer()
                    }
                    .padding(.top,1)
                    .padding(.leading)
                    
                    
                    Button {
                        
                    } label: {
                        VStack{
                            HStack {
                                Text("Tell us what's happening")
                                    .padding(.leading, 15)
                                Spacer()
                                Image(systemName: "mic.fill")
                                    .padding(.trailing, 15)
                            }
                            .foregroundColor(.gray)
                        }
                        .padding()
                        .background(Color("SquaresBG2"))
                        .cornerRadius(10)
                        
                    }
                    .padding(.horizontal)
                    ZStack{
                        RoundedRectangle(cornerRadius:10)
                            .foregroundColor(Color("SquaresBG2"))
                        VStack{
                            ForEach(0 ..< vm.supportTopicsiPhone.count, id: \.self){ index in
                                Button {
                                    
                                } label: {
                                    HStack{
                                        Image(systemName: vm.supportTopicsiPhone[index].image)
                                            .foregroundColor(vm.supportTopicsiPhone[index].color)
                                            .font(.system(size:25))
                                        Text(vm.supportTopicsiPhone[index].name)
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .font(.system(size:12).weight(.light))
                                    }
                                }
                                .foregroundColor(Color("Text"))
                                .padding(10)
                                Divider()
                                
                            }
                        }
                    }
                    .padding()
                }
                
                
            }
            .background(Color("background"))
        }
        
        
        
    }
}

struct MyDevicesView_Previews: PreviewProvider {
    static var previews: some View {
        MyDevicesView(pos: 0)
            .environmentObject(ViewModel())
    }
}
