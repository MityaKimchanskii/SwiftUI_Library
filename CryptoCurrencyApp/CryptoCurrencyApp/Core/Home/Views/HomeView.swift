//
//  HomeView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//



import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                // Top coins
                TopMoversView()
                
                Divider()
                
                // All coins
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
