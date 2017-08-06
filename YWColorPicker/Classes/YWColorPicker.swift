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
    
    @IBOutlet weak var chromaticView: UIView!
    
    @IBOutlet weak var sliderChromeView: UIView!
    
    
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
    
    
    // MARK: Touch Handling
    
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch:UITouch in touches {
            self.dispatchTouchEvent(setTouch: touch)
        }
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    func dispatchTouchEvent(setTouch:UITouch)  {
        
    }
    

}
