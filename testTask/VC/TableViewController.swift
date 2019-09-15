//
//  TableViewController.swift
//  testTask
//
//  Created by Temirlan Ibraev on 9/15/19.
//  Copyright © 2019 Temirlan Ibraev. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayOfText: [String] = ["Test - 1","Test - 2","Test - 3","Test - 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    private func configTableView() {
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfText.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        cell.textLabel?.text = arrayOfText[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        return footerView
    }
}
