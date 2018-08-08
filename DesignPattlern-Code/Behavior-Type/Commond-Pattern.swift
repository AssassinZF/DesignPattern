//
//  Commond-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/7.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

//命令抽象接口
protocol Commond{
    var desc:String{set get}
    func execute()
}

class ConcreteCommond: Commond {
    var desc: String = "click commond"
    fileprivate var receiver:Receiver!
    init(receiver:Receiver) {
        self.receiver = receiver
    }
    func execute() {
        print("execure \(desc) ...")
        receiver.action()
    }
}

//命令接受者
class Receiver {
    func action() {
        print("receive action")
    }
}

class Invoker {
    var commond:Commond
    
    init(commond:Commond) {
        self.commond = commond
    }
    func call() {
        commond.execute()
    }
}

func TestCommondPattern() {
    let receiver = Receiver()
    
    let commond = ConcreteCommond(receiver: receiver)
    
    let invoker = Invoker(commond: commond)
    
    invoker.call()
    
}
