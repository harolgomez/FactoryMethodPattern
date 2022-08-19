//
//  Device.swift
//  FactoryMethodPattern
//
//  Created by elpaps on 17/08/22.
//

import Foundation

public protocol Device {
    var id: String { get set }
    var model: String { get set }
}

struct Phone: Device {
    var id: String
    var model: String
}

struct Laptop: Device {
    var id: String
    var model: String
}
