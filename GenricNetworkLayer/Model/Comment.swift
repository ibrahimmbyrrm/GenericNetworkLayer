//
//  Comment.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 2.04.2023.
//

import Foundation

struct Comment : Codable {
    let postId : Int
    let id : Int
    let email : String
    let body : String
}
