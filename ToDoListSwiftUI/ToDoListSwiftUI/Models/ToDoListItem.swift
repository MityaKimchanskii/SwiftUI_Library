//
//  ToDoListItem.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/12/24.
//

import Foundation


struct ToDoListItem: Codable, Identifiable {
    
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
