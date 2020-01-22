//
//  ViewController.swift
//  ParsingJSON
//
//  Created by Arifeen Mahmud on 21/1/20.
//  Copyright © 2020 Arifeen Mahmud. All rights reserved.
//

import UIKit

struct Country: Decodable {
    let name: String
    let capatil: String
    let region: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = "https://restcountries.eu/rest/v2/all"
        let urlObj = URL(string: url)
        
        URLSession.shared.dataTask(with: urlObj!) {(data, response, error) in
            
            do{
                let countries = try JSONDecoder().decode([Country].self, from: data!)
                
                for Country in countries {
                    print(Country.name + ":" + Country.capatil)
                }
                
            } catch{
                //return()//print("Not me error")
            }
        }.resume()
        
    }

}

