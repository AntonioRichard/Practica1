//
//  ViewController.swift
//  DownloadEx3
//
//  Created by Antonio - Raul RICHARD on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView:UITableView!
    weak var imageView:UIImageView!
    var heroes = [ImageDecoder]()
    var hero:ImageDecoder?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJSON {
            self.tableView.reloadData()
        }
        tableView.dataSource = self
    }
    
    func downloadJSON(completed: @escaping () -> ()){
        let url = URL(string: "https://api.opendota.com/api/heroStats")
        URLSession.shared.dataTask(with: url!){(data,response,error)in
            if error == nil{
                do{
                self.heroes = try JSONDecoder().decode([ImageDecoder].self, from: data!)
                
                    DispatchQueue.main.async {
                        completed()
                    }
                }catch{
                    print("JSON Error")
                }
            }
        }.resume()
    }
}

extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = heroes[indexPath.row].localized_name.capitalized
        let urlString = "https://api.opendota.com"+heroes[indexPath.row].img
        let url = URL(string: urlString)
        if let data = try? Data(contentsOf: url!) {
            cell.imageView?.image = UIImage(data: data)
            }
        return cell
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

