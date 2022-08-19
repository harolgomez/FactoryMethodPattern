//
//  FactoryMethodPatternTests.swift
//  FactoryMethodPatternTests
//
//  Created by elpaps on 17/08/22.
//

import XCTest
@testable import FactoryMethodPattern

class FactoryMethodPatternTests: XCTestCase {

    func test_makeDevice() {
        let manufacture = PhoneManufacture()
        let client = Client(manufacture: manufacture)
        client.makeDevice()
    }
}
