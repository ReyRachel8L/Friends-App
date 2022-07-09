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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

