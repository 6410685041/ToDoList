//
//  LoginViewModel.swift
//  ToDoList
//
//  Created by ชลิศา ธรรมราช on 15/3/2567 BE.
//

import Foundation
import FirebaseAuth

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func login() {
        Auth.auth().signIn(withEmail: email, link: password)
    }
}
