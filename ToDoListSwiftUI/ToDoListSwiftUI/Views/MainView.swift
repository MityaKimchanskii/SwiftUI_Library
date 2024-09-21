//
//  ContentView.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/12/24.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
