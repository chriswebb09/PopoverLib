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
       // view.addSubview(alert)
        alert.layoutSubviews()
        view.backgroundColor = UIColor.lightGray
        alert.loadingView.alertBanner.setTitle(title: "New Title")
        let newButton = UIButton()
        newButton.setTitle("New Button", for: .normal)
        newButton.titleLabel?.text = "New Button"
        alert.loadingView.alertActions.addButtonsForType(button: [newButton], type: .oneButton)
        alert.showAlert(viewController: self)
    }
    
    
}

