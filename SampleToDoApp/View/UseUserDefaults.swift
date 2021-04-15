//
//  UseUserDefaults.swift
//  SampleToDoApp
//
//  Created by 久富稜也 on 2021/02/20.
//

import Foundation

class UseUserDefaults: ObservableObject {
    let key = "toDoList"
    let userDefaults = UserDefaults.standard
    
    @Published var todos = [String]()
    
    
    func delete(at offsets: IndexSet) {
            todos.remove(atOffsets: offsets)
            print(todos)
            UserDefaults.standard.setValue(todos, forKey: "TODO")
        }
    
    
    func addToDo(text: String) {
        todos.append(text)
        userDefaults.setValue(todos, forKey: key)
    }
    
}
