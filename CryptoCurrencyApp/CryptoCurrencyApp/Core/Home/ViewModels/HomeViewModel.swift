//
//  HomeViewModel.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 10/21/24.
//

// https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=bitcoin&x_cg_demo_api_key=CG-QsMwicVj9ko9utWDrgTnTf6s
// https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparcline=true&price_change_percentage=24h&x_cg_demo_api_key=CG-QsMwicVj9ko9utWDrgTnTf6s

import SwiftUI

class HomeViewModel: ObservableObject {
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparcline=true&price_change_percentage=24h&x_cg_demo_api_key=CG-QsMwicVj9ko9utWDrgTnTf6s"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Debug: Error \(error.localizedDescription)")
                return
            }
            
            
            if let response = response as? HTTPURLResponse {
                print("Debug: Responses code \(response.statusCode)")
            }
            
            guard let data else { return }
            
            
        }.resume()
    }
}
