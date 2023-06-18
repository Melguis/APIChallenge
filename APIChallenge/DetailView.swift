//
//  DetailView.swift
//  APIChallenge
//
//  Created by Jorge Henrique on 18/06/23.
//

import SwiftUI

struct DetailView: View {
    let user: User
    
    var body: some View {
        List {
            Section {
                Text("Registered: \(user.formattedDate)")
                Text("Age: \(user.age)")
                Text("Email: \(user.email)")
                Text("Address: \(user.address)")
                Text("Works for: \(user.company)")
            } header: {
                Text("Basic Info")
            }
            
            Section {
                Text(user.about)
            } header: {
                Text("About")
            }
            
            Section {
                ForEach(user.friends) { friend in
                    Text(friend.name)
                }
            } header: {
                Text("Friends")
            }
        }
        .navigationTitle(user.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(user: user)
//    }
//}