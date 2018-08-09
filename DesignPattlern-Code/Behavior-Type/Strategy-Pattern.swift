//
//  Strategy-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/9.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

protocol StrategyInterface {
    func doSometing()
}

class ConcreteStrategy1: StrategyInterface {
    func doSometing() {
        print("具体策略1 实施 ")
    }
}

class ConcreteStrategy2: StrategyInterface {
    func doSometing() {
        print("具体策略2 实施 ")
    }
}

class Context {
    private var strategy:StrategyInterface
    init(strategy:StrategyInterface) {
        self.strategy = strategy
    }
    func request() {
        strategy.doSometing()
    }
}

func testStrategy() {
    let str1 =  ConcreteStrategy1()
    let context = Context(strategy: str1)
    context.request()
    
}
