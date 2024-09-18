//
//  LoginView.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/12/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List", subtitle: "Hello ToDo List", angle: 16, background: .green)
                
                Spacer()
                
                // Login Form
                Form {
                    if  !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    TextField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocorrectionDisabled()
                    
                    TLButton(title: "Log In", background: .blue) {
                        // Action
                        viewModel.login()
                    }
                    
                }
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    LoginView()
}
