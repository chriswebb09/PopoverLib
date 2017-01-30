//
//  BaseAlertView.swift
//  PopoverLib
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

enum AlertType {
    case oneButton, twoButton
}

class BaseAlertView: UIView {
    
    var views: [UIView]!
    
    var alertContent: ContentView = {
        let content = ContentView()
        content.backgroundColor =  UIColor.white
        return content
    }()
    
    var alertActions: ActionView = {
        let actions = ActionView()
        actions.backgroundColor = UIColor.lightGray
        return actions
    }()
    
    var alertBanner: BannerView = {
        let banner = BannerView()
        banner.layoutSubviews()
        banner.backgroundColor = UIColor.green
        return banner
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        views = [alertBanner, alertContent, alertActions]
        setup()
    }
    
    fileprivate func setup() {
        views.map { addSubview($0) }
        views.map { $0.translatesAutoresizingMaskIntoConstraints = false }
        views.map { $0.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true }
        views.map { $0.centerXAnchor.constraint(equalTo: centerXAnchor).isActive  = true }
        setHeights(banner: alertBanner)
        setHeights(banner: alertActions)
        views.map { print($0.bounds.width) }
        alertContent.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        alertBanner.topAnchor.constraint(equalTo: topAnchor).isActive = true
        alertContent.topAnchor.constraint(equalTo: alertBanner.bottomAnchor).isActive = true
        alertActions.topAnchor.constraint(equalTo: alertContent.bottomAnchor).isActive = true
    }
    
    public func setColor(color: UIColor) {
        alertBanner.backgroundColor = color
        alertContent.backgroundColor = UIColor.white
        alertActions.backgroundColor = AlertColors.red
    }
    
    fileprivate func setHeights(banner: UIView) {
        banner.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.25).isActive = true
    }
    
    public func setBannerTitle(title:String) {
        alertBanner.titleLabel.text = title
    }
    
    public func setBannerTextColor(color: UIColor) {
        alertBanner.titleLabel.textColor = color
    }
    
    func setupBorder(color: UIColor) {
        layer.borderColor = color.cgColor
        layer.borderWidth = 1
    }
    
    func setAlertContent(content: String) {
        alertContent.contentLabel.text = content
    }
}
