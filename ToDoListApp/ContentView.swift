//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Ali Farhat on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        
        Todo(title: "Study Unit 8", subtitle: "I need it for the next class", isCompleted: true),
        Todo(title: "Finish all assignments"),
        Todo(title: "Play sports"),
        Todo(title: "See my friends")
    ]
    var body: some View {
        NavigationStack {
            List($todos) { $todo in
                HStack{
                    Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle") .onTapGesture {
                        todo.isCompleted.toggle()
                    }
                    VStack(alignment: .leading) {
                        Text(todo.title)
                            .strikethrough(todo.isCompleted)
                        if !todo.subtitle.isEmpty {
                            Text(todo.subtitle)
                                .font(.footnote)
                                .foregroundColor(.gray)
                                .strikethrough(todo.isCompleted)
                            
                        }
                    }
                }
            }.navigationTitle("My Todo List")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
