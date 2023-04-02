//
//  NetworkHelper.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 2.04.2023.
//

import Foundation

enum HTTPMethods : String {
    case get = "GET"
    case post = "POST"
}
enum HTTPError : String, Error {
    case invalidURL = "Invalid URL"
    case invalidData = "Invalid Data"
    case generalError = "General Error"
}

class NetworkHelper {
    static let shared = NetworkHelper()
    
    let baseURL = "https://jsonplaceholder.typicode.com/"
    let headers = ["Auth" : "Bearer"]
}
