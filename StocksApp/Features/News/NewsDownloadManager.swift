//
//  NewsDownloadManager.swift
//  StocksApp
//
//  Created by Ramill Ibragimov on 20.02.2021.
//

import Foundation

final class NewsDownloadManager: ObservableObject {
    
    @Published var newsArticles = [News]()
    
    private let newsUrlString = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(NewsAPI.key)"
    
    init() {
        download()
    }
    
    func download() {
        NetworkManager<NewsResponse>().fetch(from: URL(string: newsUrlString)!) { (result) in
            switch result {
            case .failure(let err):
                print(err)
            case .success(let resp):
                DispatchQueue.main.async {
                    self.newsArticles = resp.articles
                }
            }
        }
    }
}
