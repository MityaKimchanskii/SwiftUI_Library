//
//  HomeView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 11/25/24.
//

import SwiftUI


struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                // top movers
                TopMoversView(viewModel: viewModel)
                
                Divider()
                // all coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

#Preview {
    HomeView()
   
}
