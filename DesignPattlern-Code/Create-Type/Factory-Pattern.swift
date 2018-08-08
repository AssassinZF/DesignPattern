//
//  Factory-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/8.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

//把之前工厂抽象出来
protocol LogFactory {
    func createLog()-> Product
}

//构建具体产品
class FileLog: Product {
    func use() {
        print("file log")
    }
}

class DataLog: Product {
    func use() {
        print("data log")
    }
}

//具体的工厂
class FileLogConcreteFactory: LogFactory {
    func createLog() -> Product {
        return FileLog()
    }
}
class DataLogConcreteFactory: LogFactory {
    func createLog() -> Product {
        return DataLog()
    }
}


func TestFactory() {
    
    let fileFactory = FileLogConcreteFactory()
    let fileLogProduct = fileFactory.createLog()
    fileLogProduct.use()
    
}








