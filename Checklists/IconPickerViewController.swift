//
//  IconPickerViewController.swift
//  Checklists
//
//  Created by Sean Perez on 7/26/16.
//  Copyright © 2016 SeanPerez. All rights reserved.
//

import Foundation
import UIKit

protocol IconPickerViewControllerDelegate: class {
    func iconPickerViewController(controller: IconPickerViewController, didPickIcon iconName: String)
}

class IconPickerViewController: UITableViewController {
    
    weak var delegate: IconPickerViewControllerDelegate?
    
    let icons = [ "No Icon",
                  "Appointments",
                  "Birthdays",
                  "Chores",
                  "Drinks",
                  "Folder",
                  "Groceries",
                  "Inbox",
                  "Photos",
                  "Trips" ]
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return icons.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("IconCell", forIndexPath: indexPath)
        let iconName = icons[indexPath.row]
        cell.textLabel!.text = iconName
        cell.imageView!.image = UIImage(named: iconName)
        return cell
    }
}