//
//  ViewController.swift
//  WorkTimeApp
//
//  Created by Мухаммед Каипов on 3/4/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(button)
        button.backgroundColor = .blue
        
        button.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.size.equalTo(100)
        }
    }
}

