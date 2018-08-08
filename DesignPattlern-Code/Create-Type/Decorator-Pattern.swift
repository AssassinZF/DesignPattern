//
//  Decorator-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/8.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

//装饰着模式

//抽象的咖啡
protocol Beverage {
    func getDesc()->String
    func getPrice()->Float
}

class ConcreteBeverage1: Beverage {
    func getDesc() -> String {
        return "A类咖啡"
    }
    func getPrice() -> Float {
        return 10.0
    }
}

class ConcreteBeverage2: Beverage {
    func getDesc() -> String {
        return "B类咖啡"
    }
    func getPrice() -> Float {
        return 20.0
    }
}

//装饰者
class Decorator: Beverage {
    var beverage:Beverage
    init(beverage:Beverage) {
        self.beverage = beverage
    }
    
    func getDesc() -> String {
        return "unknow desc"
    }
    func getPrice() -> Float {
        return 0.0
    }
}

class MilkDecorator: Decorator {
    
    override func getPrice() -> Float {
        let price = beverage.getPrice()
        return 2.0 + price
    }
    override func getDesc() -> String {
        let desc = beverage.getDesc()
        return desc + "加了牛奶"
    }
}

class SoyDecorator: Decorator {
    override func getPrice() -> Float {
        let price = beverage.getPrice()
        return 4.0 + price
    }
    override func getDesc() -> String {
        let desc = beverage.getDesc()
        return desc + "加了soy"
    }
}

func testDecorator() {
    //第一种咖啡
    let beverage1 = ConcreteBeverage1()
    print("\(beverage1.getDesc()) | \(beverage1.getPrice())")
    
    let miolkRes = MilkDecorator(beverage: beverage1)
    let Soyres = SoyDecorator(beverage: miolkRes)
    print(Soyres.getDesc() + "\n加了牛奶和SOY的咖啡价格：" + "\(Soyres.getPrice())");

    
}





