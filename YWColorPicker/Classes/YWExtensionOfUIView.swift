//
//  YWExtensionOfUIView.swift
//  YWColorPicker
//
//  Created by Yoseph Wijaya on 2017/08/06.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

extension UIView {

    func setupLayoutConstraint_0_0_0_0_toParent() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        let topConstraint:NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: self.superview!, attribute: .topMargin, multiplier: 1.0, constant: 0.0)
        topConstraint.isActive = true
        
        let leftConstraint:NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: self.superview!, attribute: .leading, multiplier: 1.0, constant: 0.0)
        leftConstraint.isActive = true
        
        let rightConstraint:NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: self.superview!, attribute: .trailing, multiplier: 1.0, constant: 0.0)
        rightConstraint.isActive = true
        
        let bottomConstraint:NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: self.superview!, attribute: .bottomMargin, multiplier: 1.0, constant: 0.0)
        bottomConstraint.isActive = true
        
        
        let arraySuperViewConstraints:[NSLayoutConstraint] = [topConstraint, leftConstraint, rightConstraint, bottomConstraint]
        
        self.superview!.removeConstraints(arraySuperViewConstraints)
        
        
        self.superview!.addConstraint(topConstraint)
        self.superview!.addConstraint(leftConstraint)
        self.superview!.addConstraint(rightConstraint)
        self.superview!.addConstraint(bottomConstraint)
    }
    
    
    var setupAlert:Bool{
        set{
            self.layer.cornerRadius = 10
            self.layer.masksToBounds = true
        }
        get{
            return self.isHidden
        }
    }
    
    var setupTarget:Bool{
        set{
            self.layer.cornerRadius = 15
            self.layer.masksToBounds = true
        }
        
        get{
            return self.isHidden
        }
    }
    
    var setupResult:CGFloat{
        set{
            self.layer.masksToBounds = true
            self.layer.borderColor = UIColor.lightGray.cgColor
            self.layer.borderWidth = newValue
            self.layer.cornerRadius = 10
        }
        
        get {
            return self.layer.borderWidth
        }
    }
    
}
