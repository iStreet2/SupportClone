//
//  ActivitiesView.swift
//  SupportClone
//
//  Created by Gabriel Vicentin Negro on 14/08/23.
//

import SwiftUI

struct ActivitieView: View {
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        Image(systemName: "clock.fill")
                            .font(.largeTitle)
                        VStack {
                            Text("No support acitivity in the past")
                            Text("90 day")
                        }
                        .font(.title2).bold()
                        
                        VStack {
                            Text("Past and upcoming reservations, calls, and chats")
                            Text("with Apple Support will appear here")
                        }
                        .foregroundColor(.gray)
                    }
                    .navigationTitle("Recent Activity")
                    .frame(width: geometry.size.width)
                    .frame(minHeight: geometry.size.height)
                }
            }
        }
    }
}

struct ActivitieView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitieView()
    }
}
