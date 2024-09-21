//
//  ToDoListItemsView.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/12/24.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("ToDo List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
