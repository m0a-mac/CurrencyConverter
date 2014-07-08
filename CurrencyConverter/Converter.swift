//
//  Converter.swift
//  CurrencyConverter
//
//  Created by m0a on 2014/07/06.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

import Cocoa

class Converter: NSObject {
    var dollarsToConvert = 0.0
    var exchangeRate = 0.0
    
    var amountInOtherCurrency:Double {
        set {
            println("can not change this value!")
        }
        get {
            return dollarsToConvert * exchangeRate
        }
    }
    
    
    override class func keyPathsForValuesAffectingValueForKey(key: String!) -> NSSet! {
        
        /*
        if ([key isEqualToString:@"amountInOtherCurrency"])
        {
        return [NSSet setWithObjects:@"dollarsToConvert", @"exchangeRate", nil];
        }
        return nil;
*/
        
        if (key == "amountInOtherCurrency")
        {
            return NSSet(objects: "dollarsToConvert","exchangeRate")
        }
        return nil
    }
}
