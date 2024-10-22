//
//  CoinRowView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack {
            // market rank
            Text("1")
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
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
                
                Text("BTC")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            
            
            // coin name info
            VStack(alignment: .trailing, spacing: 5) {
                Text("$20, 000.23")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 5)
                
                Text("-7.70%")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

#Preview {
    CoinRowView()
}
