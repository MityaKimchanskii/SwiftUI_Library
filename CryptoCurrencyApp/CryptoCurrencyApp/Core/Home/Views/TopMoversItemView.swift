//
//  TopMoversItemView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // coin info
            HStack(spacing: 3) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            // coin percentage
            Text("- 95%")
                .font(.title2)
                .foregroundColor(.red)
            
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}

#Preview {
    TopMoversItemView()
}
