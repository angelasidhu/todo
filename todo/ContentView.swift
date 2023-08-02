//
//  ContentView.swift
//  todo
//
//  Created by scholar on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Button(action:  {self.showNewTask = true} ) {
                    Text("+")
                        .font(.largeTitle)
                } //button display
                Spacer()
            } // hstack
            .padding()
            Spacer()
        } // vstack
        List {
            ForEach (toDoItems) { toDoItem in
                if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
                }
        } // list
        .listStyle(.plain)
        if showNewTask {
            NewToDoView(title: "", isImportant: false, toDoItems: $toDoItems, showNewTask: $showNewTask)
                } // if new task
    } // some view
} // view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
