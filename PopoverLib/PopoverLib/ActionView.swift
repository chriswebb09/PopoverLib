//
//  ActionView.swift
//  PopoverLib
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class ActionView: UIView {
    
    var alertType: AlertType!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    public func addButtonsForType(buttons: [UIButton], type: AlertType, color: [UIColor]) {
        switch type {
        case .oneButton:
            alertType = type
            setupOneButton(button: buttons[0])
        default:
            alertType = type
            setupTwoButton(buttons: buttons, buttonColors: color)
        }
    }
    
    private func setupOneButton(button: UIButton) {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1).isActive = true
        button.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
    }
    
    private func setupTwoButton(buttons: [UIButton], buttonColors: [UIColor]) {
        let zipped = zip(buttons, buttonColors)
        zipped.flatMap { $0.0.backgroundColor = $0.1 }
        buttons.forEach { button in
            addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            button.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1).isActive = true
            button.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5).isActive = true
        }
        buttons[0].leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        buttons[1].rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
    
    
}
