//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Sean Perez on 7/21/16.
//  Copyright © 2016 SeanPerez. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject, NSCoding {
    var text: String
    var checked: Bool
    
    init(text: String, checked: Bool) {
        self.text = text
        self.checked = checked
        super.init()
    }
    
    func toggleChecked() {
        checked = !checked
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(text, forKey: "Text")
        aCoder.encodeBool(checked, forKey: "Checked")
    }
    
    required init?(coder aDecoder: NSCoder) {
        text = aDecoder.decodeObjectForKey("Text") as! String
        checked = aDecoder.decodeBoolForKey("Checked")
        super.init()
    }
    
}