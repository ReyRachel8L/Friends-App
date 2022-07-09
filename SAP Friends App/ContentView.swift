//
//  ContentView.swift
//  SAP Friends App
//
//  Created by LIM YEE SIN RACHEL stu on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var friends = [
        
        Friend(name: "Rachel", description: "rachel", notes: "rachel"),
        Friend(name: "Angus", description: "angus", notes: "angus"),
        Friend(name: "Aaron", description: "aaron", notes: "aaron"),
        Friend(name: "Daryl", description: "daryl", notes: "daryl"),
        Friend(name: "Kate Lynn", description: "kate lynn", notes: "kate lynn"),
        Friend(name: "Zach", description: "zach", notes: "zach")
    ]
    
    @State var friendManager = FriendManager()
    @State var isNewFriendSheetShown = false;
    
    var body: some View {
        NavigationView {
            List {
                ForEach($friendManager.friends) { $friend in
                    NavigationLink {
                        FriendDetailView(friend: $friend)
                    } label: {
                        VStack (alignment: .leading) {
                            Text(friend.name)
                            if !friend.description.isEmpty {
                                Text(friend.description)
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                .onDelete { indexSet in
                    friendManager.friends.remove(atOffsets: indexSet)
                }
                .onMove { originalOffset, newOffset in
                    friendManager.friends.move(fromOffsets: originalOffset, toOffset: newOffset)
                }
            }
            .navigationTitle("Friends")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        isNewFriendSheetShown = true;
                    } label: {
                        Image(systemName: "plus.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
        .sheet(isPresented: $isNewFriendSheetShown){
            NewFriendAbility(names: $friendManager.friends)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
