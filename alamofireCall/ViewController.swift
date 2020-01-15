//
//  ViewController.swift
//  alamofireCall
//
//  Created by Lab on 14/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func callBtn(_ sender: Any) {
        
        Alamofire.request("https://api.darksky.net/forecast/688555c90fac582a0fbc3be8e444802b/37.8267,-122.4233")
            .responseJSON { response in
                print(response.request as Any)  // original URL request
                print(response.response as Any) // URL response
                print(response.result.value as Any)   // result of response serialization
                
                self.textView.text = response.description
        }
    }
    

}

