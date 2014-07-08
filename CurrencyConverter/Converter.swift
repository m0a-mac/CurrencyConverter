//
//  Converter.swift
//  CurrencyConverter
//
//  Created by m0a on 2014/07/06.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

import Cocoa

class Converter: NSObject {
    var sourceCurrencyAmount:Float = 0.0
    var rate:Float = 0.0
    
    func convertCurrency() -> Float {
        return rate * sourceCurrencyAmount
    }
}
