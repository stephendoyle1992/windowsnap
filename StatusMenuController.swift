//
//  StatusMenuController.swift
//  windowsnap
//
//  Created by Stephen Doyle on 2018-04-23.
//  Copyright © 2018 Stephen Doyle. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
    
    override func awakeFromNib() {
        statusItem.title = "WindowSnap"
        statusItem.menu = statusMenu
    }

}
