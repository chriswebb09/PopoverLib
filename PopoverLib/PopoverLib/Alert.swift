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


class Alert: UIView {
    
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func showAlert(viewController: UIViewController) {
        containerView.frame = UIScreen.main.bounds
        containerView.backgroundColor = UIColor.blue
        containerView.center = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height/2)
        addLoadingView()
        addSubviews(viewController: viewController)
    }
    
    func hideAlert(viewController:UIViewController){
        viewController.view.sendSubview(toBack: containerView)
    }
    
    func addLoadingView() {
        loadingView.frame = CGRect(x:0, y:0, width: UIScreen.main.bounds.width * 0.9, height:UIScreen.main.bounds.height * 0.35)
        loadingView.center = CGPoint(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY)
        loadingView.clipsToBounds = true
    }
    
    func addSubviews(viewController: UIViewController) {
        addLoadingView()
        containerView.addSubview(loadingView)
        viewController.view.addSubview(containerView)
    }
}