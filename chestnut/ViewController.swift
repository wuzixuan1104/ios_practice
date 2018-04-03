//
//  ViewController.swift
//  chestnut
//
//  Created by 吳姿萱 on 2018/4/3.
//  Copyright © 2018年 吳姿萱. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label: UILabel!;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label = UILabel()
        label.text = "oa"
        label.layer.borderWidth = 1;
        label.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false;
        self.view.addSubview(label);
        
//        self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .top, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .top, multiplier: 1.0, constant: 100))
//        self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .left, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .left, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .centerX, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .centerX, multiplier: 1, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .centerY, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .centerY, multiplier: 1, constant: 0))
        
        //  self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100))
        
        self.view.addConstraint(NSLayoutConstraint(item: label, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.5, constant: 0))
        
        /* Button */
        let myButton = UIButton();
        myButton.translatesAutoresizingMaskIntoConstraints = false;
        myButton.setTitle("點擊", for: .normal);
        myButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal);
        myButton.backgroundColor = UIColor(red:0.14, green:0.15, blue:0.18, alpha:1.00);
        myButton.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside);
        self.view.addSubview(myButton);
        
        self.view.addConstraint(NSLayoutConstraint(item: myButton, attribute: .centerX, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .centerX, multiplier: 1, constant: 0));
        
        self.view.addConstraint(NSLayoutConstraint(item: myButton, attribute: .centerY, relatedBy: .equal, toItem: self.view.safeAreaLayoutGuide, attribute: .centerY, multiplier: 1, constant: 60));
        
        self.view.addConstraint(NSLayoutConstraint(item: myButton, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.5, constant: 0))
        
        /* textbox */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func buttonClicked() {
        self.label.text = "Button clicked";
        print("Button clicked")
    }

}

