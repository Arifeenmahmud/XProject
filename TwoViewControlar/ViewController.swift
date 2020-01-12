//
//  ViewController.swift
//  MultipleTableInSingleView
//
//  Created by SAYDUR on 1/6/20.
//  Copyright © 2020 SAYDUR. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    
    
    var cellIdentifier : String = "cell"
    var numberOfRows : Int = 0
    var item = [String]()
    var Data = ["A":["Apple","ant"],
                "B":["Banana","bat"],
                "C":["cat","crow"],
                "D":["dog","dew"],
                "E":["eye","elephant"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        table1.delegate = self
        table1.dataSource = self
        
        table2.delegate = self
        table2.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1{
            numberOfRows = Data.count
            print(numberOfRows)
            return numberOfRows
        }
        if tableView.tag == 2{

            numberOfRows = item.count
            return numberOfRows
        }
        else{
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath)
        if tableView.tag == 1{
            cell.textLabel?.text = Array(Data.keys)[indexPath.row]
        }
        else if tableView.tag == 2{
            
            cell.textLabel?.text =  item[indexPath.row]
        }
        return cell
    }
    
    //for Click
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView.tag == 1{
            print(Array(Data.values)[indexPath.row])
            
            item = Array(Data.values)[indexPath.row]
            
        }
        table2.reloadData()
    }
    
    
    
    
    
    }
    
    


