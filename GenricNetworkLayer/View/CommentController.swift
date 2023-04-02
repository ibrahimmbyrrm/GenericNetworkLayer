//
//  CommentController.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 2.04.2023.
//

import UIKit

class CommentController: UIViewController {

    @IBOutlet weak var commentTableView: UITableView!
    var viewModel = PostViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        commentTableView.dataSource = self
        commentTableView.delegate = self
        
        viewModel.getPostComments { errorMessage in
            if let errorMessage = errorMessage {
                print(errorMessage)
            }
            self.commentTableView.reloadDataAsync()
        }
    }


}
extension CommentController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.commentItems[indexPath.row].body
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.commentItems.count
    }
}
