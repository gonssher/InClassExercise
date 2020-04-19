//
//  wbsViewController.swift
//  InClass2
//
//  Created by Sherwin on 2020-01-29.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit
import WebKit

class wbsViewController: UIViewController ,WKNavigationDelegate{
    @IBOutlet var webPage : WKWebView!
    @IBOutlet var activityView: UIActivityIndicatorView!
    @IBOutlet var tfName : UITextField!
    @IBOutlet var tfEmail : UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField)-> Bool {
        
        return textField.resignFirstResponder()
        
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!)
        
{
    activityView.isHidden=false
    activityView.startAnimating()
    
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityView.isHidden=true;
        activityView.stopAnimating()
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let  urlAddress = URL(string: "https://www.google.com")
        let url = URLRequest(url: urlAddress!)
        webPage.load(url)
        webPage.navigationDelegate = self
        
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
