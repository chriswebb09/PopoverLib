//
//  ContentView.swift
//  PopoverLib
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class ContentView: UIView {
    
    var titleLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
    }
    
    func setupConstraints() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75).isActive = true
        titleLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8).isActive = true
    }
    
}
