//
//  AllCoinsView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 11/25/24.
//

import SwiftUI

struct AllCoinsView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()
            
            HStack {
                Text("Coin")
                    
                Spacer()
                
                Text("Prices")
            }
            .font(.caption)
            .foregroundColor(.gray)
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ForEach(viewModel.coins, id: \.self) { coin in 
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
    }
}

//#Preview {
//    AllCoinsView()
//}
