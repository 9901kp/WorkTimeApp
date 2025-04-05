//
//  BaseView.swift
//  UIComponents
//
//  Created by Мухаммед Каипов on 3/4/25.
//

import UIKit

open class BaseView: UIView {
    
    let label = UILabel()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}


extension BaseView {
    @objc func setup() {
        
    }

}

