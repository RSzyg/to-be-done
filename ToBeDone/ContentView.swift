//
//  ContentView.swift
//  ToBeDone
//
//  Created by Zhang Yuhao on 2023/4/2.
//

import SwiftUI

struct ContentView: View {
    @State var todoList = [
        Todo(title: "Buy groceries", detail: "Milk, eggs, bread", done: false),
        Todo(title: "Do laundry", detail: "Wash, dry, fold", done: true),
        Todo(title: "Read a book", detail: "The Hitchhiker's Guide to the Galaxy", done: false)
    ]

    var body: some View {
        VStack {
            Group {
                // Your header view here
            }
            GeometryReader { g in
                ScrollView(.vertical) {
                    List {
                        ForEach($todoList) { todoItem in
                            HStack {
                                CheckBoxView(checked: todoItem.done)
                                Text(todoItem.wrappedValue.title)
                            }
                        }
                        .onDelete { indexSet in
                            todoList.remove(atOffsets: indexSet)
                        }
                    }
                    .frame(width: g.size.width - 5, height: g.size.height - 50, alignment: .center)
                }
            }
            Group {
                // Your footer view here
                Button(action: {
                    let newTodo = Todo(title: "Todo \(todoList.count)", detail: "some detail", done: false)
                    todoList.append(newTodo)
                }) {
                    Text("Add Todo")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
