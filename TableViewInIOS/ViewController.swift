//
//  ViewController.swift
//  TableViewInIOS
//
//  Created by DA MAC M1 120 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //displaying
        tableView.dataSource =  self
        tableView.delegate = self
    }
}


// MARK: - DataSource Protocol
extension ViewController: UITableViewDataSource{
    
    //method for displaying the number of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    //method for displaying data in the row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
       
        cell.textLabel?.text = "I am a row number: \(indexPath.row)"
        
        return cell
    }
    
}

//(indexPath.row)
//method for displaying row number


// method to edit a row in a table
//MARK: - Delegates
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you have clicked row number: \(indexPath.row)")
    }
}

