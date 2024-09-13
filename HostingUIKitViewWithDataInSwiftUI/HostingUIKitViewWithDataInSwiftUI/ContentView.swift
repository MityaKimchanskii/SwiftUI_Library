//
//  ContentView.swift
//  HostingUIKitViewWithDataInSwiftUI
//
//  Created by Mitya Kim on 1/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
          
            Image(systemName: "apple.logo")
                .font(.system(size: 100))
                .foregroundStyle(.gray)
                .padding()
          
            Text("Hello, world!")
                .padding()
           
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
