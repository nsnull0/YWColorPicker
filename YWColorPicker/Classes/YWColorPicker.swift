//
//  YWColorPicker.swift
//  YWColorPicker
//
//  Created by Yoseph Wijaya on 2017/08/05.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

public class YWColorPicker: UIViewController {

    private weak var root:UIViewController?
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    required public init(parent:UIViewController){
        let bundle = Bundle(for: YWColorPicker.self)
        super.init(nibName: "YWColorPicker", bundle: bundle)
        
        self.didMove(toParentViewController: parent)
        
        setupInitializeProperty(parent: parent)
        
    }
    
    
    func setupInitializeProperty(parent: UIViewController) {
        
        self.root = parent
        
        self.view.frame = CGRect(x: 0, y: 0, width: getScreenWidth(), height: getScreenHeight())
        
        
        self.root!.view.addSubview(self.view)
        
        self.view.setupLayoutConstraint_0_0_0_0_toParent()
        
        self.view.removeFromSuperview()
        
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    public func showColorPicker(){
        guard self.root != nil else {
            return
        }
        
        self.root!.view.addSubview(self.view)
        self.view.setupLayoutConstraint_0_0_0_0_toParent()
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
