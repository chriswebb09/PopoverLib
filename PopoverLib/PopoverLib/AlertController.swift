//
//  ViewController.swift
//  PopoverLib
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class AlertController: UIViewController {
    
    let alert: Alert = Alert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert.layoutSubviews()
        view.backgroundColor = UIColor.lightGray
        alert.loadingView.alertBanner.setTitle(title: "New Title")
        alert.loadingView.setupBorder(color: UIColor.black)
        let newButton = UIButton()
        newButton.setTitle("New Button", for: .normal)
        newButton.titleLabel?.text = "New Button"
        let nextButton = UIButton()
        nextButton.setTitle("Next Button", for: .normal)
        nextButton.titleLabel?.text = "New Button"
        let buttons = [newButton, nextButton]
        let selectors = [#selector(buttonMethodOne), #selector(buttonMethodTwo)]
        addMethodsToButtons(alertType: .twoButton, buttons: buttons, selectors: selectors)
        alert.loadingView.alertActions.addButtonsForType(buttons: [newButton, nextButton], type: .twoButton)
        alert.showAlert(viewController: self)
    }
    
    
    func addMethodsToButtons(alertType: AlertType, buttons: [UIButton], selectors: [Selector]) {
        switch alertType {
        case .oneButton:
            buttons[0].addTarget(self, action: selectors[0], for: .touchUpInside)
        case .twoButton:
            buttons.forEach { button in
                selectors.forEach { selector in
                    button.addTarget(self, action: selector, for: .touchUpInside)
                }
            }
        }
    }
    
    
    func buttonMethodOne() {
        alert.hideAlert(viewController: self)
    }
    
    func buttonMethodTwo() {
        print("--------------------------")
        print("two")
        alert.hideAlert(viewController: self)
    }
}

