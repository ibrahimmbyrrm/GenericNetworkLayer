//
//  PostViewModel.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 2.04.2023.
//

import Foundation

class PostViewModel {
    var postId = 0
    var postItems = [Post]()
    var commentItems = [Comment]()
    
    func getPostItems(complete : @escaping((String?)->())) {
        PostManager.shared.getPostItems { items, errorMessage in
            if let items = items {
                self.postItems = items
            }
            complete(errorMessage)
        }
    }
    func getPostComments(completion : @escaping((String?)->())) {
        PostManager.shared.getPostComments(postID: postId) { comments, errorMessage in
            if let comments = comments {
                self.commentItems = comments
            }
            completion(errorMessage)
        }
    }
    
    
}
