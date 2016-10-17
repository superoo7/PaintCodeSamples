//
//  MyStyleKit.swift
//  SinMotion
//
//  Created by luowei on 2016/10/17.
//  Copyright (c) 2016 wodedata. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class MyStyleKit : NSObject {

    //// Drawing Methods

    public class func drawSinMotion( frame: CGRect = CGRect(x: 0, y: 0, width: 300, height: 120), x: CGFloat = 160) {
        //// General Declarations
        guard let context = UIGraphicsGetCurrentContext() as CGContext? else{
            return
        }


        //// Variable Declarations
        let expression: CGFloat = 20 * sin(x * 5 * CGFloat(M_PI)/180) + 50

        //// Oval Drawing
        context.saveGState()
        context.translateBy(x: (x + 10.5), y: (expression + 10.5))

        let ovalPath = UIBezierPath(ovalIn: CGRect(x: -10.5, y: -10.5, width: 21, height: 21))
        UIColor.green.setFill()
        ovalPath.fill()

        context.restoreGState()
    }

}
