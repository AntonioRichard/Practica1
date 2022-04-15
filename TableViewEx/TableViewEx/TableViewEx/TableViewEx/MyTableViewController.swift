//
//  MyTableViewController.swift
//  TableViewEx
//
//  Created by Antonio - Raul RICHARD on 13.04.2022.
//

import UIKit

class MyTableViewController: UITableViewController {

    //public var movieImages = Array<UIImage>()
    //movieImages.append(UIImage(named: "spiderman")!)
    public var titles:[(String, (()->Void))] = []
    let imageSpiderman = UIImage(named: "spiderman")
    let imageBatman = UIImage(named: "batman")
    let imageSuperman = UIImage(named: "superman")
    
    override func viewDidLoad() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableView.backgroundColor = UIColor.black
    }
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = titles[indexPath.row].0
        cell.textLabel?.textColor = UIColor.white
        if(indexPath.row == 0){
            cell.imageView?.image = imageSuperman
        }
        if(indexPath.row == 1){
            cell.imageView?.image = imageBatman
        }
        if(indexPath.row == 2){
            cell.imageView?.image = imageSpiderman
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        titles[indexPath.row].1()
        if(indexPath.row == 0){
        navigationController?.pushViewController(DetailsSupermanViewController(), animated: true)
        }
        if(indexPath.row == 1){
        navigationController?.pushViewController(DetailsBatmanViewController(), animated: true)
        }
        if(indexPath.row == 2){
        navigationController?.pushViewController(SpidermanViewController(), animated: true)
        }
    }
}

