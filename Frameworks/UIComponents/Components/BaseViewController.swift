//
//  BaseViewController.swift
//  UIComponents
//
//  Created by Мухаммед Каипов on 3/4/25.
//

import UIKit

open class BaseViewController: UIViewController {
    
    let label = UILabel()
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    

}


extension BaseViewController {
    @objc open func setup() {
        
    }

}
