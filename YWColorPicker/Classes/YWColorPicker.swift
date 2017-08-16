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
    
    @IBOutlet weak var resultColorView: UIView!
    
    public weak var delegate:YWProtocol?
    
    private var currentHue:CGFloat = 0
    private var currentBrightness:CGFloat = 0
    private var currentSaturation:CGFloat = 0
    
    private var changeSliderColor:UIColor{
        set {
            self.sliderChromeView.backgroundColor = newValue
            self.resultColorView.backgroundColor = newValue
        }
        get{
            return self.changeSliderColor
        }
    }
    
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
        
        
        
        self.startView()
        
    }
    
    public func showColorPickerWith(_initial color:UIColor){
        
        guard self.root != nil else {
            return
        }
        
        self.root!.view.addSubview(self.view)
        self.view.setupLayoutConstraint_0_0_0_0_toParent()
        
        var tempHue:CGFloat = 0
        var tempSaturation:CGFloat = 0
        var tempBrightness:CGFloat = 0
        var tempAlpha:CGFloat = 0
        
        color.getHue(&tempHue, saturation: &tempSaturation, brightness: &tempBrightness, alpha: &tempAlpha)
        
        currentHue = tempHue
        currentSaturation = tempSaturation
        
        
        self.view.layoutIfNeeded()
        
        sliderChromeView.center = CGPoint(x: (currentHue*chromaticView.bounds.size.width)+sliderChromeView.bounds.origin.x,
                                          y: (1.0-currentSaturation)*chromaticView.bounds.size.height+sliderChromeView.bounds.origin.y)
        
        
        changeSliderColor = color
        
        
        self.startView()
    }
    
    
    // MARK: Touch Handling
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch:UITouch in touches {
            self.dispatchTouchEvent(_point: touch.location(in: self.chromaticView))
        }
    }
    
    public override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch:UITouch in touches{
            self.dispatchTouchEvent(_point: touch.location(in: self.chromaticView))
        }
    }
    
    
    func dispatchTouchEvent(_point locationPoint:CGPoint)  {
        guard locationPoint.x > -1 && locationPoint.y > -1 && self.chromaticView.frame.contains(locationPoint) else {
            return
        }
        sliderChromeView.center = CGPoint.init(x: locationPoint.x, y: locationPoint.y);
        updateHueSatWith(_movement: locationPoint)
        self.view.setNeedsDisplay()
    }
    
    private func updateHueSatWith(_movement point:CGPoint){
        currentHue = (point.x - sliderChromeView.bounds.origin.x) / chromaticView.bounds.size.width
        currentSaturation = 1.0 - (point.y - sliderChromeView.bounds.origin.y) / chromaticView.bounds.size.height
        
        let gradientColor:UIColor = UIColor.init(hue: currentHue,
                                                 saturation: currentSaturation,
                                                 brightness: 1.0,
                                                 alpha: 1.0)
        
        changeSliderColor = gradientColor
        
    }
    
    //MARK: Touch Gesture
    @IBAction func tapDismiss(_ sender: UITapGestureRecognizer) {
        
        self.removeSelf(completion: {
            (_) in
        })
        
    }
    
    @IBAction func tapViewChromaticColorView(_ sender: UITapGestureRecognizer) {
        
        print("\(String(describing: sender.view!.setupColorAppleItem))")
        self.resultColorView.backgroundColor = sender.view!.setupColorAppleItem
    }
    
    
    
    //MARK: Button Handle
    
    @IBAction func cancelHandle(_ sender: UIButton) {
        
        self.removeSelf(completion: {
            (_) in
        })
        
    }
    
    @IBAction func finishPickColorHandle(_ sender: UIButton) {
        
        self.removeSelf(completion: {
            (_) in
            
            self.delegate?.finishSelection(self.resultColorView.backgroundColor!)
            
        })
        
    }

}
