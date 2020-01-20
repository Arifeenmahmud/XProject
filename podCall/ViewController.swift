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
        AF.request("https://api.darksky.net/forecast/5c74c06e261c64b3a2f6e1abfb7fe85d/37.8267,-122.4233").responseJSON { response in
//            print(response.request as Any)
//            print(response.response as Any)
//            print(response.result as Any)
            
            var temp : Double = 0.0
                        if let jsonDictionary = response.value as? [String : Any] {
                            if let currentWeatherDictionary = jsonDictionary["currently"] as? [String : Any]{
                                _ = currentWeatherDictionary["summary"] as? String
                                temp = currentWeatherDictionary["temperature"] as? Double ?? 0.0
                              
                                
                                let time = currentWeatherDictionary["time"] as! Int
                                print(time)
                                
                                let date = Date(timeIntervalSince1970: 1579168388)
                                let dateFormatter = DateFormatter()
                                dateFormatter.timeZone = TimeZone(abbreviation: "GMT") //Set timezone that you want
                                dateFormatter.locale = NSLocale.current
                                dateFormatter.dateFormat = "dd-MM-yyyy HH:mm a" //Specify your format that you want //"dd-MM-yyyy HH:mm"
                                let strDate = dateFormatter.string(from: date as Date)
                                
                        
                                
                                self.textView.text = strDate
                                
                                
                                print(strDate)
                          
                                
                            }
                        }
                    }
                }

            }

