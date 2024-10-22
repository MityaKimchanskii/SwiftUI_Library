//
//  HomeView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // Top coins
                TopMoversView()
                
                // All coins
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
