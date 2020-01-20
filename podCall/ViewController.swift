//
//  ViewController.swift
//  podCall
//
//  Created by Lab on 16/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    
    @IBAction func btn(_ sender: Any) {
        
        //Function Call for respose API & print them in log
        AF.request("https://api.darksky.net/forecast/688555c90fac582a0fbc3be8e444802b/37.8267,-122.4233", parameters: ["foo": "bar"]).responseJSON{ response in
            print(response.request as Any)
            print(response.response as Any)
            print(response.result as Any)
            
            // Code for showing data in text view
            self.textView.text = response.description
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


