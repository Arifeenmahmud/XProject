//
//  ViewController.swift
//  GetAPIData
//
//  Created by Lab on 13/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//
//
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UITextView!
    
    @IBAction func click(_ sender: Any) {
        
        guard let url = URL(string: "https://api.darksky.net/forecast/688555c90fac582a0fbc3be8e444802b/37.8267,-122.4233") else {
                   return
               }
               let session = URLSession.shared
               session.dataTask(with: url){(data, response, error)in
                   if let response = response {
                       print (response)
                       
                   }
                   if let data = data {
                    print(data)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 8.5) { // in half a second...
                        print("Are we there yet?")
                         self.text.text = String(bytes: data, encoding: .utf8)
                    }
                   }
               }.resume()
               
           }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
