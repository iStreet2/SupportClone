//
//  MyDevicesView.swift
//  SupportClone
//
//  Created by Raphael Iniesta Reis on 15/08/23.
//

import SwiftUI

struct MyDevicesView: View {
    @EnvironmentObject var vm : ViewModel
    var pos: Int
    
    var body: some View {
        VStack{
            VStack{
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
            
            Button {
                //                showingSheetHelp.toggle()
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
            
            
            Spacer()
        }
        .padding()
        
    }
}

struct MyDevicesView_Previews: PreviewProvider {
    static var previews: some View {
        MyDevicesView(pos: 0)
            .environmentObject(ViewModel())
    }
}
