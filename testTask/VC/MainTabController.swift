//
//  ViewController.swift
//  testTask
//
//  Created by Temirlan Ibraev on 9/15/19.
//  Copyright © 2019 Temirlan Ibraev. All rights reserved.
//

import UIKit

class MainTabController: UITabBarController {

    init() {
        super.init(nibName: nil, bundle: nil)
        configureControllers()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configureControllers() {
        view.backgroundColor = .white
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionVC = UINavigationController(rootViewController: CollectionViewController(collectionViewLayout: layout))
        collectionVC.tabBarItem = UITabBarItem(
            title: nil,
            image: #imageLiteral(resourceName: "collection"),
            selectedImage: nil)
        
        let vc = UINavigationController(rootViewController: ViewController(nibName: nil, bundle: nil))
        vc.tabBarItem = UITabBarItem(
            title: nil,
            image: #imageLiteral(resourceName: "image"),
            selectedImage: nil)
        
        let tableVC = UINavigationController(rootViewController: TableViewController(nibName: nil, bundle: nil))
        tableVC.tabBarItem = UITabBarItem(
            title: nil,
            image: #imageLiteral(resourceName: "table"),
            selectedImage: nil)
        
        let childCtrls = [collectionVC, vc, tableVC]
        childCtrls.forEach {
            $0.tabBarItem.imageInsets = UIEdgeInsets(top: 5.0, left: 0.0, bottom: -5.0, right: 0.0)
        }
        self.viewControllers = childCtrls
    }

}

