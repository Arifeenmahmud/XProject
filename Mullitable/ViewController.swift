//
//  ViewController.swift
//  Mullitable
//
//  Created by Arifeen Mahmud on 12/1/20.
//  Copyright © 2020 ArifeenMahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var table1: UITableView!
    @IBOutlet var table2: UITableView!
    
    
    
    let teams : [String] = ["Arsenal","Chelsea","Manchester"]
    
    let ArsenalPlayer : [String] = ["Arsenal","Arsenal","Arsenal","Arsenal","Arsenal"]
    let ChelseaPlayer : [String] = ["Chelsea","Chelsea","Chelsea","Chelsea","Chelsea"]
    let ManchesterPlayer : [String] = ["Manchester","Manchester","Manchester","Manchester"]
    
    var teamReference : String = "Arsenal"
    let cellIdentifier : String = "Cell"
    
    var numberOfTeams : Int = 0
    var numberOfPlayers : Int = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table1.delegate = self
        table2.delegate = self
        
        table1.dataSource = self
        table2.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (tableView.tag == 1)
        {
            numberOfTeams = teams.count
            return numberOfTeams
            
        }
        else if (tableView.tag == 2)
        {
            if (teamReference == "Arsenal")
            {
                numberOfPlayers = ArsenalPlayer.count
            }
            else if (teamReference == "Chelsea")
            {
                numberOfPlayers = ChelseaPlayer.count
            }
            else if (teamReference == "Manchester")
            {
                numberOfPlayers = ManchesterPlayer.count
            }
            return numberOfPlayers
        }
        else
        {
            return 0
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as UITableViewCell
        
        if (tableView.tag == 1)
        {
            Cell.textLabel?.text = teams[indexPath.row]
        }
        else if (tableView.tag == 2)
        {
            if (teamReference == "Arsenal")
            {
                Cell.textLabel?.text = ArsenalPlayer[indexPath.row]
            }
            else if (teamReference == "Chelsea")
            {
                Cell.textLabel?.text = ChelseaPlayer[indexPath.row]
            }
            else if (teamReference == "Manchester")
            {
                Cell.textLabel?.text = ManchesterPlayer[indexPath.row]
            }
        }
        return Cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (tableView.tag == 1)
        {
            teamReference = teams[indexPath.row]
        }
        table2.reloadData()
    }

}

