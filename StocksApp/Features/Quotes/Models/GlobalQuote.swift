//
//  GlobalQuote.swift
//  StocksApp
//
//  Created by Ramill Ibragimov on 20.02.2021.
//

import Foundation

struct GlobalQuoteResponse: Codable {
    var quote: Quote
    
    private enum CodingKeys: String, CodingKey {
        case quote = "Global Quote"
    }
}
