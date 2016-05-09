//
//  FuncMethod.swift
//  ios21
//
//  Created by EndoTakashi on 2016/05/09.
//  Copyright © 2016年 tak. All rights reserved.
//

import Foundation
import UIKit



func makeLabel(x:CGFloat, y:CGFloat) -> UILabel{
    var Label:UILabel = UILabel()
    Label.frame = CGRect(x: x + 80, y: y, width: 20, height: 20)
    Label.backgroundColor = UIColor.whiteColor()
    
    return Label
}