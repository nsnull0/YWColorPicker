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

    @IBOutlet weak var viewColor: UIView!
    var pickerColor:YWColorPicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pickerColor = YWColorPicker(parent: self)
        pickerColor?.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func tapContainer(_ sender: UITapGestureRecognizer) {
        
        pickerColor!.showColorPickerWith(_initial: viewColor.backgroundColor!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:YWProtocol{
    func finishSelection(_ color: UIColor) {
        self.viewColor.backgroundColor = color
    }
}

