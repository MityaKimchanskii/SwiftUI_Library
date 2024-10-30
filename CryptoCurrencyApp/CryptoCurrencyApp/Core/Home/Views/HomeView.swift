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
                TopMoversView(viewModel: viewModel)
                
                Divider()
                
                // All coins
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
}
