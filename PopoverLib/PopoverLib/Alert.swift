//
//  Alert.swift
//  PopoverLib
//
//  Created by Christopher Webb-Orenstein on 1/29/17.
//  Copyright © 2017 Christopher Webb-Orenstein. All rights reserved.
//

import UIKit

struct AlertColors {
    static let red = UIColor(red:0.92, green:0.18, blue:0.18, alpha:1.0)
    static let blue = UIColor(red:0.16, green:0.53, blue:0.87, alpha:1.0)
}

public class Alert: UIView {
    
    lazy var containerView: UIView = {
        let containerView = UIView()
        containerView.backgroundColor = UIColor.clear
        return containerView
    }()
    
    var loadingView: BaseAlertView = {
        let loadingView = BaseAlertView()
        loadingView.layoutSubviews()
        loadingView.layer.cornerRadius = 10
        loadingView.backgroundColor = UIColor.white
        return loadingView
    }()
    
    override public func layoutSubviews() {
        super.layoutSubviews()
    }
    
    public func showAlert(viewController: UIViewController) {
        containerView.isHidden = false
        containerView.frame = UIScreen.main.bounds
        containerView.backgroundColor = UIColor.blue
        containerView.center = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
        addLoadingView()
        addSubviews(viewController: viewController)
        viewController.view.bringSubview(toFront: containerView)
    }
    
    public func hideAlert(viewController: UIViewController) {
        containerView.isHidden = true
    }
    
    private func addLoadingView() {
        loadingView.frame = CGRect(x:0, y:0, width: UIScreen.main.bounds.width * 0.9, height:UIScreen.main.bounds.height * 0.35)
        loadingView.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        loadingView.clipsToBounds = true
    }
    
    private func addSubviews(viewController: UIViewController) {
        addLoadingView()
        containerView.addSubview(loadingView)
        viewController.view.addSubview(containerView)
    }
}
