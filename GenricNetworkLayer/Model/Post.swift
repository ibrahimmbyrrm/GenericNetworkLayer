//
//  Post.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 2.04.2023.
//

import Foundation

struct Post : Codable {
    let userId : Int
    let id : Int
    let title : String
    let body : String
}
