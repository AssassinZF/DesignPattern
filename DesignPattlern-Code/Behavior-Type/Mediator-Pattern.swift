//
//  Mediator-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/8.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

protocol Person: class {
    var name:String{get}
    var mediator:Mediator{set get}
}

protocol Mediator: class {
    func constact(context:String,person:Person)
}

class PersonA: Person {
    var name: String{
        return "person A"
    }
    var mediator: Mediator
    
    init(mediator:Mediator) {
        self.mediator = mediator
    }
    
    func getMessage(text:String) {
        print(name + ":" + text)
    }
}

class PersonB: Person {
    var name: String{
        return "person B"
    }
    var mediator: Mediator
    init(mediator:Mediator) {
        self.mediator = mediator
    }
    func getMessage(text:String) {
        print(name + ":" + text)
    }
}

class ConcreteMediator: Mediator {
    var personA:PersonA?
    var personB:PersonB?
    func constact(context: String, person: Person) {
        
        guard let pa = personA , let pb = personB else {
            return
        }
        
        if person === pa {
            pa.getMessage(text: context)
        }else if person === pb {
            pb.getMessage(text: context)
        }
    }
}

func testMediator() {
    let concreteMedia = ConcreteMediator()
    let pa = PersonA(mediator: concreteMedia)
    let pb = PersonB(mediator: concreteMedia)
    concreteMedia.personA = pa
    concreteMedia.personB = pb
    
    concreteMedia.constact(context: "有船吗？", person: pa)
    concreteMedia.constact(context: "yes", person: pb)
    
    
    
    
}
