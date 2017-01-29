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
    let tap = UIGestureRecognizer(target: self, action: #selector(showAlert))
    override func viewDidLoad() {
        super.viewDidLoad()
        alert.layoutSubviews()
        view.backgroundColor = UIColor.lightGray
        alert.loadingView.alertBanner.setTitle(title: "New Title")
        alert.loadingView.setupBorder(color: UIColor.black)
        let newButton = UIButton()
        newButton.setTitle("New Button", for: .normal)
        newButton.titleLabel?.text = "New Button"
        newButton.addTarget(self, action: #selector(buttonMethodOne), for: .touchUpInside)
        let nextButton = UIButton()
        nextButton.setTitle("Next Button", for: .normal)
        nextButton.titleLabel?.text = "New Button"
        nextButton.addTarget(self, action: #selector(buttonMethodOne), for: .touchUpInside)
        alert.loadingView.alertActions.addButtonsForType(buttons: [newButton, nextButton], type: .twoButton)
        alert.showAlert(viewController: self)
        //view.addGestureRecognizer(tap)
        //view.isUserInteractionEnabled = false
    }
    
    
    func buttonMethodOne() {
        print("here")
       // view.isUserInteractionEnabled = true
       // let tap = UIGestureRecognizer(target: self, action: #selector(showAlert))
        alert.hideAlert(viewController: self)
        view.addGestureRecognizer(tap)
    }
    
    func showAlert() {
        print("show alert")
        alert.showAlert(viewController: self)
    }
    
    
    
}

