//
//  ViewController.swift
//  programming jokes
//
//  Created by Arifeen Mahmud on 12/7/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ClickForAction(_ sender: Any) {
        let refreshAlert = UIAlertController(title: "Refresh", message: "All data will be lost.", preferredStyle: UIAlertController.Style.alert)

        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
              print("Handle Ok logic here")
        }))
        
        
//        refreshAlert.addAction(UIAlertAction(title: "cancel", style: .cancel, handler: { (action: UIAlertAction!) in
//              print("Handle Ok logic here")
//        }))


        present(refreshAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func test(_ sender: Any) {
        // create the alert
              let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: .alert)

              // add an action (button)
              alert.addAction(UIAlertAction(title: "OkK", style: UIAlertAction.Style.default, handler: nil))

              // show the alert
              self.present(alert, animated: true, completion: nil)
        
    }
    
}

