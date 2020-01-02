//
//  TableViewController.swift
//  BeginnerTableView
//
//  Created by Lab on 2/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit
var pets = ["dog", "cat", "rabbit"]
var petDec = ["dog has four lage","cat like eat fish", "Rabbit Like to Jump arround"]
var myIndex = 0


class TableViewController: UITableViewController {


    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return pets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = pets[indexPath.row]

        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "showDetail", sender: self)
    }

}
