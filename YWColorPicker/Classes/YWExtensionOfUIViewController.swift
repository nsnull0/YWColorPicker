//
//  YWExtensionOfUIViewController.swift
//  YWColorPicker
//
//  Created by Yoseph Wijaya on 2017/08/06.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

extension UIViewController {
    func getScreenWidth() -> CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    func getScreenHeight() -> CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    func removeSelf( completion:@escaping (_ finish:Bool) -> Void) {
        
        UIView.animate(withDuration: 0.3, animations: {
            self.view.frame = CGRect(x: -self.getScreenWidth(), y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height)
        }){ (_) in
            self.view.removeFromSuperview();
            self.removeFromParentViewController();
            completion(true)
        };
        
        
        
    }
    
    func removeSelfWithoutAnimation() {
        self.view.frame = CGRect(x: -self.getScreenWidth(), y: self.view.frame.origin.y, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.removeFromSuperview();
        self.removeFromParentViewController();

    }
    
    
    func startView() {
        
        var selfFrame:CGRect  = self.view.frame
        selfFrame.origin.x = -self.getScreenWidth()
        
        self.view.frame = selfFrame
        
        
        UIView.animate(withDuration: 0.3, animations: {
            self.view.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        })
        
    }
    
}
