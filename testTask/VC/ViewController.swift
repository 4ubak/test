//
//  ViewController.swift
//  testTask
//
//  Created by Temirlan Ibraev on 9/15/19.
//  Copyright © 2019 Temirlan Ibraev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView = {
        var imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        imgView.image = #imageLiteral(resourceName: "img1")
        return imgView
    }()
    
    lazy var button: UIButton = {
        var btn = UIButton()
        btn.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        btn.setTitle("Click me", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .black
        btn.layer.cornerRadius = 15
        return btn
    }()
    
    @objc func buttonClicked() {
        let alert = UIAlertController(title: "Alert", message: "Button clicked", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        self.view.addSubview(imageView)
        self.view.addSubview(button)
        self.edgesForExtendedLayout = []
        self.view.addConstraintsWithFormat("H:|-16-[v0]-16-|", views: imageView)
        self.view.addConstraintsWithFormat("H:|-16-[v0]-16-|", views: button)
        self.view.addConstraintsWithFormat("V:|-16-[v0(300)]-16-[v1(44)]->=16-|", views: imageView, button)
    }
}
