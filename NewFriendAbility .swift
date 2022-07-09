//
//  NewTodoView.swift
//  Todos v3
//
//  Created by YJ Soon on 9/7/22.
//

import SwiftUI

struct NewTodoView: View {
    
    @State var nameText = ""
    @Binding var names: [Friend]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            TextField("Please enter a name for your todo", text: $nameText)
            
            Button("Save") {
                names.append(Friend(name: "", description: "", notes: "",: nameText))
                dismiss()
            }
        }
    }
}

struct NewTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NewTodoView(names: .constant([]))
    }
}

