//
//  CoinRowView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
    
    let coin: Coin

    var body: some View {
        HStack {
            // market rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            
            // coin name info
            VStack(alignment: .leading, spacing: 5) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            
            // coin name info
            VStack(alignment: .trailing, spacing: 5) {
                Text("\(coin.currentPrice)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
                
                Text("\(coin.priceChangePercentage24H)")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

//#Preview {
//    CoinRowView(coin: )
//}
