//
//  FriendDetailView.swift
//  SAP Friends App
//
//  Created by T Krobot on 9/7/22.
//

import SwiftUI

struct FriendDetailView: View {
    @Binding var friend:Friend
    
    var body: some View {
        Text(friend.name)
            .padding()
            .font(.title2)
        Text(friend.description)
            .padding()
            
        ZStack{
            TextEditor(text: $friend.notes)
            Text(friend.notes)
                .padding(.all)
        }
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: .constant(Friend(name: "Bob",description: "Avrage Bob",notes: "")))
    }
}
