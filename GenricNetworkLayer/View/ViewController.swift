//
//  ViewController.swift
//  GenricNetworkLayer
//
//  Created by İbrahim Bayram on 2.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var viewModel = PostViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        viewModel.getPostItems { errorMessage in
            if let errorMessage = errorMessage {
                print(errorMessage)
            }
            self.tableView.reloadDataAsync()
        }
        
        
    }


}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if !viewModel.postItems.isEmpty {
            cell.textLabel?.text = viewModel.postItems[indexPath.row].title
            cell.detailTextLabel?.text = viewModel.postItems[indexPath.row].body
        }
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "\(CommentController.self)") as! CommentController
        controller.viewModel.postId = self.viewModel.postItems[indexPath.row].id ?? 0
        show(controller, sender: nil)
        
    }
    
}
