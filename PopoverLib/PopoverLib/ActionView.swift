//
//  ActionView.swift
//  PopoverLib
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class ActionView: UIView {
    
//    var titleLabel: UILabel = {
//        let titleLabel = UILabel()
//        return titleLabel
//    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
      //  setupConstraints()
    }
    
//    func setupConstraints() {
//        addSubview(titleLabel)
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        titleLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75).isActive = true
//        titleLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8).isActive = true
//    }
    
    public func addButtonsForType(button: [UIButton], type: AlertType) {
        switch type {
        case .oneButton:
            setupOneButton(button: button[0])
        default:
            setupOneButton(button: button[0])
        }
    }
    
    func setupOneButton(button: UIButton) {
        addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        button.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1).isActive = true
        button.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        button.backgroundColor = UIColor.cyan
    }
    
}
