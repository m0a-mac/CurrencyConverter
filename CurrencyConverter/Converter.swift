//
//  Converter.swift
//  CurrencyConverter
//
//  Created by m0a on 2014/07/06.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

import Cocoa

class Converter: NSObject {
    var _dollarsToConvert=0.0;
    var dollarsToConvert : Double {
        set {
            _dollarsToConvert=newValue;
            self.arrayController.addObject(["dollars":dollarsToConvert, "rate":exchangeRate,"amount":amountInOtherCurrency]);
        }
        get {
            return _dollarsToConvert;
        }
    }
    var _exchangeRate = 0.0;
    var exchangeRate:Double{
        set {
            _exchangeRate = newValue;
            self.arrayController.addObject(["dollars":dollarsToConvert, "rate":exchangeRate,"amount":amountInOtherCurrency]);
        }
    get {
        return _exchangeRate;
    }
    }
    @IBOutlet var arrayController: NSArrayController
    
    var amountInOtherCurrency:Double {
        set {
            dollarsToConvert =  newValue/exchangeRate;
            self.arrayController.addObject(["dollars":dollarsToConvert, "rate":exchangeRate,"amount":amountInOtherCurrency]);
        }
        get {
            return dollarsToConvert * exchangeRate
        }
    }
    
    
    override class func keyPathsForValuesAffectingValueForKey(key: String!) -> NSSet! {
                
        if (key == "amountInOtherCurrency")
        {
            return NSSet(objects: "dollarsToConvert","exchangeRate")
        }
        return nil
    }
}
