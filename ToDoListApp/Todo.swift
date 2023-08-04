//
//  Todo.swift
//  ToDoListApp
//
//  Created by Ali Farhat on 04/08/2023.
//

import Foundation

struct Todo : Identifiable {
    var id = UUID()
    var title : String
    var isCompleted = false
}


