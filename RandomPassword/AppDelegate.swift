//
//  AppDelegate.swift
//  RandomPassword
//
//  Created by Shen Xiaochun on 15/5/6.
//  Copyright (c) 2015年 Sigutian. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        // Create a window controller with a XIB file of the same name
        // let mainWindowController = MainWindowController(windowNibName: "MainWindowController")
        let mainWindowController = MainWindowController()
        
        // put the window of the window controller on screen
        mainWindowController.showWindow(self)
        
        // set the property to point to the window controller
        self.mainWindowController = mainWindowController
        
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

