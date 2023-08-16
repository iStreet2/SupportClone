//
//  MyDevicesView.swift
//  SupportClone
//
//  Created by Raphael Iniesta Reis on 15/08/23.
//

import SwiftUI

struct MyDevicesViewList: View {
    @EnvironmentObject var vm : ViewModel
    @Environment(\.defaultMinListRowHeight) var rowHeight
    var pos: Int
    
    var body: some View {
        NavigationView{
            List{
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
                        .background(Color("SquaresBG"))
                        .cornerRadius(10)
                        
                    }
                    
                    ForEach(0 ..< vm.supportTopics.count, id: \.self){ index in
                        Button {
                            
                        } label: {
                            HStack{
                                Image(systemName: vm.supportTopics[index].image)
                                    .foregroundColor(vm.supportTopics[index].color)
                                    .font(.system(size:25))
                                Text(vm.supportTopics[index].name)
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .font(.system(size:12).weight(.light))
                            }
                        }
                        .foregroundColor(Color("Text"))
                        
                    }
                    .padding()
                }
                
                
            }
            .listStyle(.grouped)
            
        }
        
        
        
    }
}

struct MyDevicesViewList_Previews: PreviewProvider {
    static var previews: some View {
        MyDevicesViewList(pos: 0)
            .environmentObject(ViewModel())
    }
}
