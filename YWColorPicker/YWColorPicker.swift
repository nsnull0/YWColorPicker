//
//  YWColorPicker.swift
//  YWColorPicker
//
//  Created by Yoseph Wijaya on 2017/08/05.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

class YWColorPicker: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    required public init(parent:UIViewController){
        let bundle = Bundle(for: YWColorPicker.self)
        super.init(nibName: "YWColorPicker", bundle: bundle)
        
        self.didMove(toParentViewController: parent)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
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
