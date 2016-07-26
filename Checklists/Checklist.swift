//
//  Checklist.swift
//  Checklists
//
//  Created by Sean Perez on 7/25/16.
//  Copyright © 2016 SeanPerez. All rights reserved.
//

import UIKit

class Checklist: NSObject {
    var name = ""
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
