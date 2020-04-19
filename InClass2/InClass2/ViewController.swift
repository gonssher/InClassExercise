//
//  ViewController.swift
//  InClass2
//
//  Created by Sherwin on 2020-01-29.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITextFieldDelegate{
    
    
    private let RegisterViewControllerInstance = RegisterViewController()
    @IBOutlet  var usernameField: UITextField!
    @IBOutlet  var passwordField: UITextField!

    let username = "dog"
    let password = "dog"
    
    func textFieldShouldReturn(_ textField: UITextField)-> Bool {
        
        return textField.resignFirstResponder()
        
    }


    @IBAction func showAlert() {
        
        if usernameField.text != username || passwordField.text != password
        {
            
            let alertController = UIAlertController(title: "Disclaimer", message: "The user name or password you have entered is invalid", preferredStyle: .alert)
            
            let declineAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let acceptAction = UIAlertAction(title: "Register", style: .default) { (_) -> Void in
                
                self.performSegue(withIdentifier: "somesegue", sender: self) // Replace SomeSegue with your segue identifier (name)
            }
            
            alertController.addAction(declineAction)
            alertController.addAction(acceptAction)
            
            present(alertController, animated: true, completion: nil)
            
        }else
        
        {
            
             self.performSegue(withIdentifier: "monkeysegue", sender: self) // Replace SomeSegue with
            
        }
        
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

