//
//  Client.swift
//  FactoryMethodPattern
//
//  Created by elpaps on 17/08/22.
//

import Foundation

class Client {
    let manufacture: Manufacture
    
    init(manufacture: Manufacture) {
        self.manufacture = manufacture
    }
    
    func makeDevice() {
        let device = manufacture.makeDevice()
        manufacture.deliver(device: device)
    }
}
