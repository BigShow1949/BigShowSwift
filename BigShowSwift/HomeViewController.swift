//
//  HomeViewController.swift
//  BigShowSwift
//
//  Created by apple on 17/2/15.
//  Copyright © 2017年 BigShow1949. All rights reserved.
//

import UIKit

class HomeViewController: BaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "这是一个title"
        self.titles = ["测试","测试2","测试3","测试4","测试5",]
        self.classNames = ["TestViewController","TestViewController","TestViewController","TestViewController","TestViewController"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
