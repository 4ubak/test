//
//  ViewExt.swift
//  testTask
//
//  Created by Temirlan Ibraev on 9/15/19.
//  Copyright © 2019 Temirlan Ibraev. All rights reserved.
//

import UIKit

extension UIView {
    public func addConstraintsWithFormat(_ format: String!, views: UIView...){
        var viewsDictionary = [String: UIView]()
        for (index,view) in views.enumerated(){
            let key = "v\(index)"
            viewsDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
