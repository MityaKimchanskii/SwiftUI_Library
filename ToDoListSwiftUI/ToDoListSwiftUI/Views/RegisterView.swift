//
//  RegisterView.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/12/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var viewModel = RegisterViewViewModel()
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "New Account", angle: -16, background: .indigo)
        
        Form {
            TextField("Full Name", text: $viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email Address", text: $viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Register", background: .blue) {
                // Action
                viewModel.register()
            }
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
