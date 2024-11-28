//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Saurabh Jaiswal on 28/11/24.
//

import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://api.github.com/users/"
    let cache = NSCache<NSString, UIImage>()
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(.invalidUserName))
//            completed(nil, .invalidUserName)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
//                completed(nil, .unableToComplete)
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
//                completed(nil, .invalidResponse)
                return
            }
            guard let data = data else {
                completed(.failure(.inavlidData))
//                completed(nil, .inavlidData)
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Follower].self, from: data)
                completed(.success(followers))
//                completed(followers, nil)
            } catch {
                completed(.failure(.inavlidData))
//                completed(nil, .inavlidData)
            }
        }
        task.resume()
    }
}
