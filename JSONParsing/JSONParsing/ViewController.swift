//
//  ViewController.swift
//  JSONParsing
//
//  Created by Mac on 20/11/22.
//

import UIKit

class ViewController: UIViewController {
    
 
    
    var postArray: [Post] = []

    @IBOutlet weak var postTable: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        parseJson()
    }
    
    func parseJson() {
        let str = "https://jsonplaceholder.typicode.com/posts"
        let url = URL(string: str)
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if error == nil {
                do {
                    self.postArray = try JSONDecoder().decode([Post].self, from: data!)
                    DispatchQueue.main.async {//merge background queue on main queue
                        self.postTable.reloadData()
                    }
                } catch {
                    print("Something went wrong!")
                }
            }
        }.resume()
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return postArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ListTableViewCell
        let post = postArray[indexPath.row]
        cell.userIdLabel.text = String("UserId : \(post.userId)")
        cell.idLabel.text = String("Id : \(post.id)")
        cell.titleLabel.text = "Title : \(post.title)"
        cell.bodyLabel.text = "Body : \(post.body)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 229.0
    }
    
    
}





