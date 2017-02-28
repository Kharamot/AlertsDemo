//
//  ViewController.swift
//  AlertsDemo
//
//  Created by Kameron Haramoto on 2/21/17.
//  Copyright © 2017 Kameron Haramoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBAction func Alert1(_ sender: UIButton) {
        doAlert1()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initializeLoginAlert()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doAlert1(){
        let alert = UIAlertController(title: "Favorite Character", message: "Please choose you favorite Mario character.",preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Mario", style: .default, handler: { (action) in
            // execute some code when this option is selected
            print("Favorite character is Mario")
        }))
        
        alert.addAction(UIAlertAction(title: "Luigi", style: .destructive, handler: { (action) in
            // execute some code when this option is selected
            print("Favorite character is Luigi")
        }))
        
        alert.addAction(UIAlertAction(title: "Yoshi", style: .cancel, handler: { (action) in
            // execute some code when this option is selected
            print("Favorite character is Yoshi")
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    
    var loginAlert: UIAlertController!
    func initializeLoginAlert() {
    loginAlert = UIAlertController(title: "Login", message: "Provide your username and password.", preferredStyle: .alert); loginAlert.addTextField(configurationHandler: usernameTextFieldHandler); loginAlert.addTextField(configurationHandler: passwordTextFieldHandler); loginAlert.addAction(UIAlertAction(title: "Login", style: .default,                                                                                                                                                                                                                                                                                                  handler: { (action) in                                                                                                                                                                                                                                                                                                    let username = self.loginAlert.textFields?[0].text;                                                                                                                                                                                                                                                                                                    let password = self.loginAlert.textFields?[1].text; print("username = \(username), password = \(password)")}))
    }
    func usernameTextFieldHandler (_ textField: UITextField) { textField.placeholder = "Username"
    }
    func passwordTextFieldHandler (_ textField: UITextField) { textField.placeholder = "Password"; textField.isSecureTextEntry = true
    }
    @IBAction func alertWithText(_ sender: UIButton) { self.present(loginAlert, animated: true, completion: nil)
    }
}

