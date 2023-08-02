//
//  ToDoItem.swift
//  todo
//
//  Created by scholar on 8/2/23.
//

import Foundation

class ToDoItem: Identifiable {

    var id = UUID()
    var title = ""
    var isImportant = Bool()
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        
        
        }

    
}
