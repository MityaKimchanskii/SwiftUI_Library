//
//  ContentView.swift
//  AddViewControllerIntoSwiftUIProject
//
//  Created by Mitya Kim on 1/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
            
            VStack {
                ViewContollerRepresentation()
            }
            .padding()
        }
       
    }
}

#Preview {
    ContentView()
}
