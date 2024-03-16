//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by ชลิศา ธรรมราช on 15/3/2567 BE.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewModel()
    let item: ToDoListItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                    .bold()
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                
            }
        }
    }
}

#Preview {
    ToDoListItemView(
        item: .init(id: "123", 
                    title: "Get Milk",
                    dueDate: Date().timeIntervalSince1970, 
                    createDate: Date().timeIntervalSince1970,
                    isDone: false
                   )
    )
}
