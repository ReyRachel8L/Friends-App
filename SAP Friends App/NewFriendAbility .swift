//
//  NewTodoView.swift
//  Todos v3
//
//  Created by YJ Soon on 9/7/22.
//

import SwiftUI

struct NewFriendAbility: View {
    
    @State var nameText = ""
    @State var descriptionText = ""
    @Binding var names: [Friend]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Please enter a name for your friend", text: $nameText)
                .font(.title2)
                .padding()
            TextField("Please enter a description for your friend", text: $descriptionText)
                .padding()
            
            Button("Save") {
                names.append(Friend(name: nameText, description: descriptionText))
                dismiss()
            }
        }
    }
}

