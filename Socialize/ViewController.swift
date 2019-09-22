//
//  ViewController.swift
//  Socialize
//
//  Created by Victor Petit on 17/09/2019.
//  Copyright © 2019 Victor Petit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func connect() {
        if Compte.doesExist(pseudo: username.text!) {
            //Blablabla
            if Compte.passwordIsGood(password: password.text!) {
                //Blablabla
            }
        }
        else {
            //Blablabla
        }
    }
    
    @IBAction func signin() {
        
    }
}

