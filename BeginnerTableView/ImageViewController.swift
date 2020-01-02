//
//  ImageViewController.swift
//  BeginnerTableView
//
//  Created by Lab on 2/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var imageVidew: UIImageView!
    
    @IBOutlet var label: UILabel!
    
    var video:Video?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let video = self.video {
            self.imageVidew.image = video.image
            self.label.text = video.title
        }
        
        
    }
      
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
