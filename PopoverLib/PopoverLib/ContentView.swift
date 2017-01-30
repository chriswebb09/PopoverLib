//
//  ContentView.swift
//  PopoverLib
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

class ContentView: UIView {
    
    public var contentLabel: UILabel = {
        let titleLabel = UILabel()
        return titleLabel
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
    }
    
    private func setupConstraints() {
        addSubview(contentLabel)
        contentLabel.translatesAutoresizingMaskIntoConstraints = false
        contentLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        contentLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        contentLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.75).isActive = true
        contentLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8).isActive = true
    }
    
}
