//
//  Group-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/8.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

protocol ColorInterface {
    var colorName:String{set get}
    func tinting()
}

protocol RectInterface {
    var color:ColorInterface{set get}
    func drawRect()
}

class RoundGraph: RectInterface {
    var color: ColorInterface
    init(color:ColorInterface) {
        self.color = color
    }
    func drawRect() {
        print("我是圆形，我要用红色着色")
        color.tinting()
    }
}

class RedColor: ColorInterface {
    var colorName: String = "unknow color"
    func tinting() {
        print("我开始着色了，我是红色哦")
    }
    
}

func testGroup() {
    let redColor = RedColor()
    
    let round = RoundGraph(color: redColor)
    
    round.drawRect()
}
