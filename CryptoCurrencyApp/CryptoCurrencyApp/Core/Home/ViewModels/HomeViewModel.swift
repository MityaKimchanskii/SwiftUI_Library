//
//  HomeViewModel.swift
//  CryptoCurrencyApp
//
//  Created by Mitya Kim on 11/25/24.
//

import SwiftUI

// https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparcline=true&price_change_percentage=24h&x_cg_demo_api_key=CG-QsMwicVj9ko9utWDrgTnTf6s

class HomeViewModel: ObservableObject {
    
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    init() {
        fetchCoinData()
    }
    
    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparcline=true&price_change_percentage=24h&x_cg_demo_api_key=CG-QsMwicVj9ko9utWDrgTnTf6s"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, res, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }
            
            if let res = res as? HTTPURLResponse {
                print("DEBUG: Responce code \(res.statusCode)")
            }
            
            guard let data = data else { return }
//            let dataAsString = String(data: data, encoding: .utf8)
//            print("DEBUG: Data \(String(describing: dataAsString))")
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from: data)
//                print("DEBUG: \(coins)")
                DispatchQueue.main.async {
                    self.coins = coins
                    self.configureTopMovingCoins()
                }
            } catch let error {
                print("DEBUG: Failed to decode with error: \(error)")
            }
            
        }.resume()
    }
    
    func configureTopMovingCoins() {
        let topMovers = coins.sorted(by: { $0.priceChangePercentage24H > $1.priceChangePercentage24H})
        self.topMovingCoins = Array(topMovers.prefix(10))
        
    }
}
