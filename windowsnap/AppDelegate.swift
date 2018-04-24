//
//  AppDelegate.swift
//  windowsnap
//
//  Created by Stephen Doyle on 2018-04-23.
//  Copyright © 2018 Stephen Doyle. All rights reserved.
//

import Cocoa


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    @IBOutlet weak var window: NSWindow!
    
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        _ = NSEvent.addGlobalMonitorForEvents(matching: .leftMouseDragged, handler: { (mouseEvent: NSEvent?) in
            _ = NSEvent.addGlobalMonitorForEvents(matching: .leftMouseUp, handler: { (mouseEvent: NSEvent?) in
                let bound = NSEvent.mouseLocation
                print(bound)
                if bound.y <= 1.00 {
                    let dragged = NSWorkspace.shared.frontmostApplication!
                    dragged.hide()
                    NSEvent.removeMonitor(self)
                } else if bound.x <= 1.00 {
                    let dragged = NSWorkspace.shared.frontmostApplication!
                    //dragged.
                    NSEvent.removeMonitor(self)
                }
            })
            NSEvent.removeMonitor(self)
        })
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
}

