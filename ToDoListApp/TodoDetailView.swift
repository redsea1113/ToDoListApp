//
//  TodoDetailView.swift
//  ToDoListApp
//
//  Created by Ali Farhat on 04/08/2023.
//

import SwiftUI

struct TodoDetailView: View {
    @Binding var todo : Todo
    
    var body: some View {
        Form {
            TextField("Todo Title", text: $todo.title)
            TextField("Todo Subtitle", text: $todo.subtitle)
            Toggle("Completed?", isOn:$todo.isCompleted)
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Test To do")))
    }
}
