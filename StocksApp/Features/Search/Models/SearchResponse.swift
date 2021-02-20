//
//  SearchResponse.swift
//  StocksApp
//
//  Created by Ramill Ibragimov on 20.02.2021.
//

import Foundation


struct SearchResponse: Codable {
    var bestMatches: [Search]
}
