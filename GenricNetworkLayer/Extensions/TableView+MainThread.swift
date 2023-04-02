//
//  TableView+MainThread.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 3.04.2023.
//
import UIKit
import Foundation

extension UITableView {
    func reloadDataAsync() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
