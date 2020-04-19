//
//  ViewController.swift
//  inclass22
//
//  Created by Sherwin on 2020-01-30.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    
    @IBAction func showAlert() {
        
        let alertController = UIAlertController(title: "Disclaimer", message: "Before using this teaching", preferredStyle: .alert)
        
        let declineAction = UIAlertAction(title: "Decline", style: .cancel, handler: nil)
        let acceptAction = UIAlertAction(title: "Accept", style: .default) { (_) -> Void in
            
            self.performSegue(withIdentifier: "somesegue", sender: self) // Replace SomeSegue with your segue identifier (name)
        }
        
        alertController.addAction(declineAction)
        alertController.addAction(acceptAction)
        
        present(alertController, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

