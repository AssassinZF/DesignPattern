//
//  Oberser-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/7.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

protocol Observer: class{
    func update()
}

class OneObserver: Observer{
    func update() {
        print("第一个观察者收到通知")
    }
}

class TwoObserver: Observer {
    func update() {
        print("第二个观察者收到通知")
    }
}

//观察主题类
class Observable{
    
    var isChange = false
    var observerList:[Observer] = []
    
    func addObserver(obs:Observer) {
        let index = observerList.index { (item:Observer) -> Bool in
            return item === obs
        }
        if index == nil {
            observerList.append(obs)
        }
        
    }
    func removeObserver(obs:Observer) {
        let index = observerList.index { (item:Observer) -> Bool in
            return item === obs
        }
        if index != nil {
            observerList.remove(at: index!)
        }
        
    }
    func notifyObserver() {
        for item in observerList {
            item.update()
        }
        isChange = false
        
    }
    func setChangeData() {
        isChange = true
    }
    
    func dataChange(textData:String) {
        notifyObserver()
    }
}

func TestObserve() {
    //定义观察者
    let one = OneObserver()
    let two = TwoObserver()
    
    //观测控制台
    let observe = Observable()
    observe.addObserver(obs: one)
    observe.addObserver(obs: two)
    
    observe.dataChange(textData: "数据开始改变了")
    
    
    
    
}
