//
//  Timetable.swift
//  Socialize
//
//  Created by Victor Petit on 17/09/2019.
//  Copyright © 2019 Victor Petit. All rights reserved.
//

enum Days {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
} //There is no Sunday because nobody works on Sunday lol

enum AB {
    case A
    case B
} //Au cas ou il y ai des semaines A ou B t'as capté

//Représente une horaire de cours
class When {
    var _day: Days
    var _heure: (h: Int, min: Int) //Par exemple (17, 15) => 17h15
    var _AorB: AB? //Si AB est nil bh c'est toutes les semaines
    
    init(day: Days, heure: (Int, Int), AorB: AB?) {
        self._day = day
        self._heure = heure
        self._AorB = AorB
    }
}

//Makes "When" class Hashable (and Equatable) in order to use it as a key in the _edt dictionnary
extension When: Hashable, Equatable {
    //Equatable
    static func == (lhs: When, rhs: When) -> Bool {
        return lhs._day == rhs._day && lhs._heure == rhs._heure && lhs._AorB == rhs._AorB
    }
    
    //Hashable
    func hash(into hasher: inout Hasher) {
        hasher.combine(self._day)
        hasher.combine(self._heure.h)
        hasher.combine(self._heure.min)
        hasher.combine(self._AorB)
    }
}

//Représente un cours, et est couplé avec l'horaire (When) dans le dictionnaire _edt
class Cours {
    var _subject: String
    var _teacher: String
    var _salle: String? //Des fois on sait pas la salle donc peut être nil
    
    init(subject: String, teacher: String, salle: String?) {
        self._subject = subject
        self._teacher = teacher
        self._salle = salle
    }
}

//This class represents a timetable
class Timetable {
    var _name: String
    var _edt: [When: Cours]? //Lundi 14h05 => Mathématiques avec mme Bragard en 402 par exemple
    
    init(name: String) {
        self._name = name
        self._edt = nil
    }
    
    func updateDatabase() {
        //Will update the database
        //Sends the model to it
    }
    
    //This is when the view will be passed to the model
    func create(edt: [When: Cours]) {
        self._edt = edt
    }
    
    func addCours(when: When, cours: Cours) {
        self._edt![when] = cours
        self.updateDatabase()
    }
    
    func deleteCours(when: When) {
        self._edt!.removeValue(forKey: when) //Removes the curse into the timetable
        self.updateDatabase()
    }
}
