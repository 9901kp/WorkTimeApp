//
//  AuthViewController.swift
//  Pods
//
//  Created by Мухаммед Каипов on 3/4/25.
//

import UIKit
import UIComponents
import SnapKit

fileprivate extension Constants {
    static let horizontalOffset: CGFloat = 45
    static let buttonDividerOffset: CGFloat = 5
    static let iterItemOffset: CGFloat = 58
    static let fieldHeight: CGFloat = 28

}

public class AuthViewController: BaseViewController{
    private let contentView = UIView()
    private let loginTabButton = UIButton()
    private let buttonDividerView = UILabel()
    private let signUpTabButton = UIButton()
    private let usernameTextField = WTAuthTextField()
    private let passwordTextField = WTAuthTextField()
    private let loginButton = UIButton()
    
    override public func setup(){
        super.setup()
        view.backgroundColor = .white
        setUpContentView()
        setUpContentView()
        setUpButtonDividerView()
        setUpsignUpTabButton()
    }
}

private extension AuthViewController    {
    func setUpContentView() {
        view.addSubview(contentView)
        contentView.snp.makeConstraints {
            $0.centerY.horizontalEdges.equalToSuperview()
        }
    }
    
    func setUpContentView() {
        contentView.addSubview(loginTabButton)
        loginTabButton.setTitle("Login", for: .normal)
        loginTabButton.setTitleColor(.black, for: .normal)
        loginTabButton.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview().inset(Constants.horizontalOffset)
        }
    }
    
    func setUpButtonDividerView() {
        contentView.addSubview(buttonDividerView)
        buttonDividerView.text = "/"
        
        buttonDividerView.snp.makeConstraints {
            $0.centerY.equalToSuperview()
            $0.leading.equalTo(loginTabButton.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setUpsignUpTabButton(){
        contentView.addSubview(signUpTabButton)
        signUpTabButton.setTitle("Sign Up", for: .normal)
        signUpTabButton.setTitleColor(.black, for: .normal)

        signUpTabButton.snp.makeConstraints {
            $0.bottom.equalToSuperview()
            $0.leading.equalTo(buttonDividerView.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setUpLoginTextField() {
        contentView.addSubview(usernameTextField)
        usernameTextField.placeholder = "Username"
        
        usernameTextField.snp.makeConstraints {
            $0.top.equalTo(loginTabButton.snp.bottom).offset(Constants.iterItemOffset)
            $0.leading.equalToSuperview().inset(Constants.horizontalOffset)
            $0.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setUpPasswordTextField() {
        contentView.addSubview(usernameTextField)
        usernameTextField.placeholder = "Password"
        
        usernameTextField.snp.makeConstraints {
            $0.top.equalTo(usernameTextField.snp.bottom).offset(Constants.iterItemOffset)
            $0.leading.equalToSuperview().inset(Constants.horizontalOffset)
            $0.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setUpLoginButton() {
        contentView.addSubview(loginButton)
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .blue
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(Constants.iterItemOffset)
            $0.trailing.equalToSuperview().inset(Constants.horizontalOffset)
            $0.bottom.equalToSuperview()
        }
    }
}
