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
        VStack{
            Text(friend.name)
                .padding()
                .font(.title2)
            Text(friend.description)
                .padding()
            
            Slider(value: $friend.IQ,in: -50...250,step: 1){
                Text("IQ")
            } minimumValueLabel: {
                Text("-50")
            } maximumValueLabel: {
                Text("250")
            }
            .padding()
            
            Text("IQ: \(Int(round(friend.IQ)))")
            
            ZStack{
                TextEditor(text: $friend.notes)
                Text(friend.notes)
            }
            .border(.gray, width: 2)
            .cornerRadius(2)
        }
    }
}

struct FriendDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FriendDetailView(friend: .constant(Friend(name: "Bob",description: "Avrage Bob",notes: "", IQ: 100)))
    }
}
