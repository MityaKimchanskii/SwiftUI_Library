//
//  TopMoversView.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//

import SwiftUI

struct TopMoversView: View {
    
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topCoins) { coin in
                        TopMoversItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

//#Preview {
//    TopMoversView(viewModel: HomeViewModel())
//}
