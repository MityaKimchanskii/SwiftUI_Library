//
//  HeaderView.swift
//  ToDoListSwiftUI
//
//  Created by Mitya Kim on 9/17/24.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("Todo list")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                Text("Hello world")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
        }
        .frame(width: UIScreen.main.bounds.width*3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
