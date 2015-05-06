//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Shen Xiaochun on 15/5/6.
//  Copyright (c) 2015年 Sigutian. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    @IBOutlet weak var textField: NSTextField!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(sender: AnyObject) {
        // tell the text field waht to display
        // textField.stringValue = "button clicked"
        // Get a random string of length 8
        let length = 8
        let password = generateRandomString(length)
        
        // tell the text field display the string
        textField.stringValue = password
    }
    
}
