//
//  PostManager.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 2.04.2023.
//

import Foundation

class PostManager {
    static let shared = PostManager()
    
    func getPostItems(completion : @escaping([Post]?,String?)->Void) {
        let url = "\(NetworkHelper.shared.baseURL)posts"
        NetworkManager.shared.request(type: [Post].self, method: .get, url: url) { response in
            switch response {
            case .success(let items):
                completion(items,nil)
            case .failure(let error):
                completion(nil,error.rawValue)
            }
        }
    }
    func getPostComments(postID : Int,completion : @escaping([Comment]?,String?)->Void) {
        let url = "\(NetworkHelper.shared.baseURL)comments?postId=\(postID)"
        NetworkManager.shared.request(type: [Comment].self, method: .get, url: url) { response in
            switch response {
            case .success(let items):
                completion(items,nil)
            case .failure(let error):
                completion(nil,error.rawValue)
            }
        }
    }
}
