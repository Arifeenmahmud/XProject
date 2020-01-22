//
//  ViewController.swift
//  PodInstall
//
//  Created by Lab on 16/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit
import Alamofire

struct Course: Decodable {
    let id: Int?
    let name: String?
    let link: String?
    let imageUrl: String?
    let number_of_lessons: Int?
    
}

    class ViewController: UIViewController {
    
        @IBOutlet var textView: UITextView!
        var corurseString: String = ""
        var id:String = ""
        
        let decoder = JSONDecoder()
    
    
    @IBAction func btnCall(_ sender: Any) {
        //Function Call for respose API & print them in log
              
//        AF.request("https://api.darksky.net/forecast/688555c90fac582a0fbc3be8e444802b/37.8267,-122.4233")
//                .responseJSON{ response in
//                  print(response.request as Any)
//                  print(response.response as Any)
//                  print(response.value as Any)
//
//                  // Code for showing data in text view
//                  self.textView.text = response.description
//              }
        
        AF.request("https://api.letsbuildthatapp.com/jsondecodable/courses").validate().responseJSON { (response) in
            
            do{
                //print(response.data.map { String(decoding: $0, as: UTF8.self) } ?? "No data.")

                let courses = try self.decoder.decode([Course].self, from: response.data!)
                print(courses.count)
                
                
                for item in courses{
                    print(item.name!)
                    self.corurseString += item.name!+":" + self.id+"\n"
                }
              
                
                
            } catch{
                print("Show Error")
                
            }
        }
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
}
