//
//  RegisterView.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/12/24.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    
    var body: some View {
        HeaderView(title: "Register", subtitle: "New Account", angle: -16, background: .indigo)
        
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
            TextField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Register", background: .blue) {
                // Action
            }
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
