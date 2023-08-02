//
//  NewToDoView.swift
//  todo
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $title)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                Button(action: {
                  
                }) {
                    Text("Add")
                }
            }
        } // vstack
        .padding()
    } // some view
} // view

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
