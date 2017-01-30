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
        navigationController?.navigationBar.backgroundColor = UIColor.white
        navigationController?.navigationBar.isOpaque = true 
        navigationController?.navigationBar.topItem?.title = "Alert Popups"
        alert.layoutSubviews()
        view.backgroundColor = UIColor.lightGray
        alert.loadingView.setColor(color: AlertColors.blue)
        setupAlert()
    }
    
    public func addMethodsToButtons(alertType: AlertType, buttons: [UIButton], selectors: [Selector]) {
        let zipped = zip(buttons, selectors)
        zipped.flatMap { $0.0.addTarget(self, action: $0.1, for: .touchUpInside) }
    }
    
    func setupTwoButtonAlert() {
        alert.loadingView.alertBanner.setTitle(title: "New Title")
        alert.loadingView.setupBorder(color: UIColor.black)
        let buttons = setupTwoButtons()
        alert.loadingView.setAlertContent(content: "This is the content of the alert!")
        let selectors = [#selector(buttonMethodOne), #selector(buttonMethodTwo)]
        addMethodsToButtons(alertType: .twoButton, buttons: buttons, selectors: selectors)
        alert.loadingView.alertActions.addButtonsForType(buttons: buttons, type: .twoButton, color: [UIColor.purple, UIColor.blue])
        alert.showAlert(viewController: self)
    }
    
    func setupAlert() {
        alert.loadingView.alertBanner.setTitle(title: "New Title")
        alert.loadingView.setupBorder(color: UIColor.black)
        let buttons = setupTwoButtons()
        alert.loadingView.setAlertContent(content: "This is the content of the alert!")
        let selectors = [#selector(buttonMethodOne), #selector(buttonMethodTwo)]
        addMethodsToButtons(alertType: .oneButton, buttons: buttons, selectors: selectors)
        alert.loadingView.alertActions.addButtonsForType(buttons: buttons, type: .oneButton, color: [AlertColors.blue])
        alert.showAlert(viewController: self)
    }
    
    func setupButtons() -> [UIButton] {
        let newButton = UIButton()
        newButton.setTitle("New Button", for: .normal)
        newButton.titleLabel?.text = "New Button"
        let buttons = [newButton]
        return buttons
    }
    
    func setupTwoButtons() -> [UIButton] {
        let newButton = UIButton()
        newButton.setTitle("New Button", for: .normal)
        newButton.titleLabel?.text = "New Button"
        let nextButton = UIButton()
        nextButton.setTitle("New Button", for: .normal)
        nextButton.titleLabel?.text = "New Button"
        let buttons = [newButton, nextButton]
        return buttons
    }
    
    dynamic func buttonMethodOne() {
        setShadowAlertView()
        view.backgroundColor = UIColor.purple
        alert.hideAlert(viewController: self)
        alert.loadingView.alertActions.alertType = .twoButton
        setupTwoButtonAlert()
        alert.loadingView.setBannerTextColor(color: UIColor.white)
        alert.showAlert(viewController: self)
        alert.containerView.backgroundColor = UIColor.cyan
    }
    
    dynamic func buttonMethodTwo() {
        setShadowAlertView()
        view.backgroundColor = UIColor.cyan
        alert.hideAlert(viewController: self)
        alert.hideAlert(viewController: self)
        alert.loadingView.setBannerTextColor(color: UIColor.white)
        alert.loadingView.alertActions.alertType = .twoButton
        setupTwoButtonAlert()
        alert.showAlert(viewController: self)
    }
    
    dynamic func setShadowAlertView() {
        alert.loadingView.layer.masksToBounds = false
        alert.loadingView.layer.shadowOffset = CGSize(width: 5, height: 5)
        alert.loadingView.layer.shadowRadius = 8
        alert.loadingView.layer.shadowOpacity = 0.3
    }
}

