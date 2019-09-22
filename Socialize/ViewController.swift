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
        let usr = username.text!
        let pswd = username.text!
        
        if Compte.doesExist(pseudo: usr) {
            //Blablabla
            if Compte.passwordIsGood(password: pswd) {
                //Blablabla
                let account = Compte(pseudo: usr, password: pswd) //Creates the account and gets the datas
                
                account.getDatas()
            }
        }
        else {
            //Blablabla
        }
    }
    
    @IBAction func signin() {
        
    }
}

