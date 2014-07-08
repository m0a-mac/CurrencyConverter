//
//  ConverterController.swift
//  CurrencyConverter
//
//  Created by m0a on 2014/07/08.
//  Copyright (c) 2014年 m0a. All rights reserved.
//

import Cocoa

class ConverterController: NSObject {
    @IBOutlet var rateField: NSTextField
    @IBOutlet var dollarField: NSTextField
    @IBOutlet var amountField: NSTextField
    @IBAction func convert(sender: AnyObject) {
        println("run convert")
    }
}
