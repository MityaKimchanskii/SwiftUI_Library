//
//  AllCoinsView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//

import SwiftUI

struct AllCoinsView: View {
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
                    ForEach(0..<35, id: \.self) { _ in
                        CoinRowView()
                    }
                }
            }
        }
        
        
    }
}

#Preview {
    AllCoinsView()
}
