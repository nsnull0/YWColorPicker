//
//  YWProtocol.swift
//  YWColorPicker
//
//  Created by Yoseph Wijaya on 2017/08/16.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

public protocol YWColorProtocol: class {

    func finishSelection(_ color:UIColor)
    
    func finishSelectionWith(_ tag:Int, color:UIColor)
    
    func finishSelectionWith(_ tag:Int, _with R:CGFloat, G:CGFloat, B:CGFloat, A:CGFloat)
}

public struct rgbaDTO {
     var Red:CGFloat = 0
     var Green:CGFloat = 0
     var Blue:CGFloat = 0
     var Alpha:CGFloat = 0
    
    init(v:UIColor) {
        v.getRed(&Red, green: &Green, blue: &Blue, alpha: &Alpha)
    }
    init(){ }
}
