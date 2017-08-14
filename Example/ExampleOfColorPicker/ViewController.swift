//
//  ViewController.swift
//  ExampleOfColorPicker
//
//  Created by Yoseph Wijaya on 2017/08/05.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit
import YWColorPicker

class ViewController: UIViewController {

    var pickerColor:YWColorPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pickerColor = YWColorPicker(parent: self)
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func tapContainer(_ sender: UITapGestureRecognizer) {
        
        pickerColor!.showColorPickerWith(_initial: UIColor.blue)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

