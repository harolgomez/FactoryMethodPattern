//
//  Manufacture.swift
//  FactoryMethodPattern
//
//  Created by elpaps on 17/08/22.
//

import Foundation

public protocol Manufacture {
    func makeDevice() -> Device
    func deliver(device: Device)
}

class LaptopManufacture: Manufacture {
    
    func makeDevice() -> Device {
        let identifier = generateIdentifier()
        let laptop = Laptop(id: identifier, model: "laptopA")
        return laptop
    }
    
    func deliver(device: Device) {
        debugPrint("prepare product to be delivered", device.model, device.id)
    }
    
    func generateIdentifier() -> String {
        return UUID().uuidString
    }
}

class PhoneManufacture: Manufacture {
    
    func makeDevice() -> Device {
        let identifier = generateIdentifier()
        let laptop = Phone(id: identifier, model: "phoneB")
        return laptop
    }
    
    func deliver(device: Device) {
        debugPrint("prepare product to be delivered", device.model, device.id)
    }
    
    func generateIdentifier() -> String {
        return UUID().uuidString
    }
}
