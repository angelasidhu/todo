//
//  ContentView.swift
//  todo
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                                    
                }) {
                    Text("+")
                        .fontWeight(.heavy)
                }
            } // hstack
            .padding()
        } // vstack
    } // some view
} // view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
