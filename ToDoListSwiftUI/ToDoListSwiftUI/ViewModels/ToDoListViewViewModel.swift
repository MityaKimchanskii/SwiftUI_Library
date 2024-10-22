//
//  ToDoListViewViewModel.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/12/24.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    // Delete To Do list Item
    public func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
