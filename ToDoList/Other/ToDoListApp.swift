//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by ชลิศา ธรรมราช on 14/3/2567 BE.
//

import SwiftUI
import FirebaseCore

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
