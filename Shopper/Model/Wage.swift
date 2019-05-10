//
//  Wage.swift
//  Shopper
//
//  Created by Omar on 5/9/19.
//  Copyright © 2019 Omar. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(wage: Double, price: Double) -> Int{
        return Int(ceil(price / wage)) // ceil is to make no changes like 16.156434 will make it 17
    }
}
