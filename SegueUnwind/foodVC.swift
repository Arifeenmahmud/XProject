//
//  File.swift
//  SegueUnwind
//
//  Created by Arifeen Mahmud on 22/12/19.
//  Copyright © 2019 Arifeen Mahmud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.destination is DrinkVC else {return}
        
    }

}
