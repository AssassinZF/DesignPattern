//
//  SimpleFactory-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/8.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

protocol Product {
    func use()
}

class ConcreteProduct1: Product {
    func use() {
        print("use product-1")
    }
}

class ConcreteProduct2: Product {
    func use() {
        print("use product-2")
    }
}


class Factory {
    func createProduct(type:String) -> Product? {
        if type == "1" {
            return ConcreteProduct1()
        }else if type == "2"{
            return ConcreteProduct2()
        }
        return nil
    }
}

func TestSimpleFactory() {
    let factory = Factory()
    let product = factory.createProduct(type: "1")
    if let p = product {
        print(p.use())
    }
}



