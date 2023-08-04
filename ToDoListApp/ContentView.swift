//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Ali Farhat on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        
        Todo(title: "Study Unit 8"),
        Todo(title: "Finish all assignments"),
        Todo(title: "Play sports"),
        Todo(title: "See my friends")
    ]
    var body: some View {
        NavigationStack {
            List(todos) { todo in
                Text(todo.title)
            }.navigationTitle("My Todo List")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
