//
//  Adaptee-Pattern.swift
//  DesignPattlern-Code
//
//  Created by kris on 2018/8/8.
//  Copyright © 2018 kris'Liu. All rights reserved.
//

import Foundation

protocol Target {
    func requestMethed()
}

class Adapter: Target {
    private var adaptee:Adaptee = Adaptee()
    func requestMethed() {
        //复杂的适配放到这里
        adaptee.specificRequest()
    }
}

class Adaptee {
    func specificRequest() {
        print("request ...")
    }
}

func testAdapter() {
    let adapter = Adapter()
    adapter.requestMethed()
}
