//
//  ProfileView.swift
//  ToDoList
//
//  Created by ชลิศา ธรรมราช on 15/3/2567 BE.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        if let user = viewModel.user {
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.blue)
                .frame(width: 125,height: 125)
            VStack(alignment: .leading){
                HStack{
                    Text("Name: ")
                    Text(user.name)
                }
                HStack{
                    Text("Email: ")
                    Text(user.email)
                }
                HStack{
                    Text("Member Since: ")
                    Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                }
            }
            .onAppear()
            Button {
                
            } label: {
                Text("Logout")
            }
        } else {
            Text("Loading Profile")
        }
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error)
        }
    }
}

#Preview {
    ProfileView()
}
