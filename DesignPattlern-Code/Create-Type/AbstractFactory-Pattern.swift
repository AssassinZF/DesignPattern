//
//  AbstractFactory-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/8.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

/*
 * 产品族概念 ：在抽象工厂模式中，产品族是指由同一个工厂生产的，位于不同产品等级结构中的一组产品，如海尔电器工厂生产的海尔电视机、海尔电冰箱，海尔电视机位于电视机产品等级结构中，海尔电冰箱位于电冰箱产品等级结构中。
 */

import Foundation

//抽象产品

protocol ProductUse {
    func use()
}

protocol ProductFood {
    func eat()
}

protocol AbstractFactory {
    func creatProduct1()->ProductUse
    func creatProduct2()->ProductFood
}

//具体产品
class ConcreteProductFood_1: ProductFood {
    func eat() {
        print("eat's product 1")
    }
}

class ConcreteProductUse_1: ProductUse {
    func use() {
        print("use's product 1")
    }
}

class ConcreteProductFood_2: ProductFood {
    func eat() {
        print("eat's product 2")
    }
}

class ConcreteProductUse_2: ProductUse {
    func use() {
        print("use's product 2")
    }
}

class ConcreteFactory1: AbstractFactory {
    func creatProduct1()->ProductUse {
        return ConcreteProductUse_1()
    }
    func creatProduct2()->ProductFood {
        return ConcreteProductFood_1()
    }
}

class ConcreteFactory2: AbstractFactory {
    func creatProduct1()->ProductUse {
        return ConcreteProductUse_2()
    }
    func creatProduct2()->ProductFood {
        return ConcreteProductFood_2()
    }
}

func testAbstractFactory() {
    
    let factory1 = ConcreteFactory1()
    let productFood = factory1.creatProduct2()
    let productUse = factory1.creatProduct1()
    
    print("一个工厂，一个等级。多个种类\n")
    productUse.use()
    productFood.eat()
    
    
    let factory2 = ConcreteFactory2()
    let product1Food = factory2.creatProduct2()
    let product1Use = factory2.creatProduct1()
    
    print("一个工厂，一个等级。多个种类\n")
    product1Use.use()
    product1Food.eat()

}

//单例模式
final class SignleManager {
    var name = "name"
    
    static let sigle = SignleManager()
}




