//
//  RegisterViewController.swift
//  InClass2
//
//  Created by Sherwin on 2020-01-29.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController ,UITextFieldDelegate{
    
    @IBAction func unwindtoRegisterViewController(sender:UIStoryboardSegue) {}
    
    @IBOutlet  var nameFiels: UITextField!
    @IBOutlet  var emailField: UITextField!
    @IBOutlet var number: UITextField!
    
    

    
    func textFieldShouldReturn(_ textField: UITextField)-> Bool {
        
        return textField.resignFirstResponder()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
