//
//  Compte.swift
//  Socialize
//
//  Created by Victor Petit on 17/09/2019.
//  Copyright © 2019 Victor Petit. All rights reserved.
//

import Foundation

// A model that represent a account for the database
class Compte {
    var _pseudo: String
    var _password: String
    var _email: String?
    var _edt: [Timetable]?
    
    init(pseudo: String, password: String) {
        self._pseudo = pseudo
        self._password = password
        self._email = nil //We only need the email for specific actions (password recovery, etc...), so we won't ask it each connexion
        self._edt = getEdt()
    }
    
    static func doesExist(pseudo: String) -> Bool {
        //Checks if the account exists in the database or not
        return true
    }
    
    static func passwordIsGood(password: String) -> Bool {
        //Checks if the password is good, and usually thee password must be encrypted
        return true
    }

    //Gets the timetable in the database
    func getEdt() -> [Timetable]? {
        return nil
    }
    
    func create(email: String) {
        self._email = email
        
        //Create the entry in the database
    }
}
