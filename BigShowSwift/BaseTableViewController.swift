//
//  BaseTableViewController.swift
//  BigShowSwift
//
//  Created by apple on 17/2/15.
//  Copyright © 2017年 BigShow1949. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {

    var titles = [String]()
    var classNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor.white
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.none
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier = "UITableViewCellid"

        var cell : UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: identifier)

        if (cell == nil) {
            cell = UITableViewCell.init(style: .subtitle, reuseIdentifier: identifier)
            cell.accessoryType = .disclosureIndicator
        }
        cell.textLabel?.text = self.titles[indexPath.row]
        cell.detailTextLabel?.text = self.classNames[indexPath.row]
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let className : String = self.classNames[indexPath.row]
        
        let vcClass : AnyClass = NSClassFromString("BigShowSwift" + "." + className)!
        
        let vc = (vcClass as! UIViewController.Type).init()
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }


}
