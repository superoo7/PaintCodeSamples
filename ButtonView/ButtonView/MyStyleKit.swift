//
//  MyStyleKit.swift
//  ButtonView
//
//  Created by luowei on 2016/10/17.
//  Copyright (c) 2016 wodedata. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import UIKit

public class MyStyleKit : NSObject {

    //// Cache

    private struct Cache {
        static let normalColor: UIColor = UIColor(red: 0.023, green: 0.648, blue: 0.023, alpha: 1.000)
    }

    //// Colors

    public class var normalColor: UIColor { return Cache.normalColor }

    //// Drawing Methods

    public class func drawMyCustomButton(frame: CGRect = CGRect(x: 11, y: 8, width: 113, height: 52), btnText: String = "确 定", presse: Bool = true) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let normalFillColor = MyStyleKit.normalColor.colorWithHue(0.2)
        let normalInnerColor = MyStyleKit.normalColor.colorWithBrightness(0.4)
        let pressedColor = MyStyleKit.normalColor.colorWithHue(0.1)
        let pressedFillColor = MyStyleKit.normalColor.colorWithSaturation(0.2)
        let pressedInnerColor = MyStyleKit.normalColor.colorWithBrightness(0.3)


        //// Subframes
        let normal: CGRect = CGRect(x: frame.minX + 8, y: frame.minY + 7, width: frame.width - 16, height: frame.height - 13)
        let pressed: CGRect = CGRect(x: frame.minX + 8, y: frame.minY + 7, width: frame.width - 16, height: frame.height - 13)


        //// Normal
        //// Normal Rectangle Drawing
        let normalRectanglePath = UIBezierPath(roundedRect: CGRect(x: normal.minX + floor(normal.width * 0.00000 + 0.5), y: normal.minY + floor(normal.height * 0.00000 + 0.5), width: floor(normal.width * 1.00000 + 0.5) - floor(normal.width * 0.00000 + 0.5), height: floor(normal.height * 1.00000 + 0.5) - floor(normal.height * 0.00000 + 0.5)), cornerRadius: 5)
        normalFillColor.setFill()
        normalRectanglePath.fill()
        MyStyleKit.normalColor.setStroke()
        normalRectanglePath.lineWidth = 2
        normalRectanglePath.stroke()


        //// Normal Oval Drawing
        let normalOvalPath = UIBezierPath(ovalInRect: CGRect(x: normal.minX + floor(normal.width * 0.03093 + 0.5), y: normal.minY + floor(normal.height * 0.11538) + 0.5, width: floor(normal.width * 0.26804 + 0.5) - floor(normal.width * 0.03093 + 0.5), height: floor(normal.height * 0.88462) - floor(normal.height * 0.11538)))
        normalInnerColor.setStroke()
        normalOvalPath.lineWidth = 2
        normalOvalPath.stroke()


        //// Normal Star Drawing
        let normalStarPath = UIBezierPath()
        normalStarPath.moveToPoint(CGPoint(x: normal.minX + 0.15212 * normal.width, y: normal.minY + 0.19223 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.17224 * normal.width, y: normal.minY + 0.40288 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.23582 * normal.width, y: normal.minY + 0.40497 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.18733 * normal.width, y: normal.minY + 0.54872 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.20385 * normal.width, y: normal.minY + 0.74918 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.15715 * normal.width, y: normal.minY + 0.64594 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.10184 * normal.width, y: normal.minY + 0.75936 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.11692 * normal.width, y: normal.minY + 0.54872 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.06843 * normal.width, y: normal.minY + 0.40497 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.13201 * normal.width, y: normal.minY + 0.40288 * normal.height))
        normalStarPath.addLineToPoint(CGPoint(x: normal.minX + 0.15212 * normal.width, y: normal.minY + 0.19223 * normal.height))
        normalStarPath.closePath()
        normalInnerColor.setStroke()
        normalStarPath.lineWidth = 1
        normalStarPath.stroke()


        //// Normal Text Drawing
        let normalTextRect = CGRect(x: normal.minX + floor(normal.width * 0.29897 + 0.5), y: normal.minY + floor(normal.height * 0.25641 + 0.5), width: floor(normal.width * 0.96907 + 0.5) - floor(normal.width * 0.29897 + 0.5), height: floor(normal.height * 0.76923 + 0.5) - floor(normal.height * 0.25641 + 0.5))
        let normalTextStyle = NSMutableParagraphStyle()
        normalTextStyle.alignment = .Center

        let normalTextFontAttributes = [NSFontAttributeName: UIFont.systemFontOfSize(UIFont.labelFontSize()), NSForegroundColorAttributeName: normalInnerColor, NSParagraphStyleAttributeName: normalTextStyle]

        let normalTextTextHeight: CGFloat = NSString(string: btnText).boundingRectWithSize(CGSize(width: normalTextRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: normalTextFontAttributes, context: nil).size.height
        CGContextSaveGState(context!)
        CGContextClipToRect(context!, normalTextRect)
        NSString(string: btnText).drawInRect(CGRect(x: normalTextRect.minX, y: normalTextRect.minY + (normalTextRect.height - normalTextTextHeight) / 2, width: normalTextRect.width, height: normalTextTextHeight), withAttributes: normalTextFontAttributes)
        CGContextRestoreGState(context!)




        //// Pressed
        if (presse) {
            //// Pressed Rectangle Drawing
            let pressedRectanglePath = UIBezierPath(roundedRect: CGRect(x: pressed.minX + floor(pressed.width * 0.00000 + 0.5), y: pressed.minY + floor(pressed.height * 0.00000 + 0.5), width: floor(pressed.width * 1.00000 + 0.5) - floor(pressed.width * 0.00000 + 0.5), height: floor(pressed.height * 1.00000 + 0.5) - floor(pressed.height * 0.00000 + 0.5)), cornerRadius: 5)
            pressedFillColor.setFill()
            pressedRectanglePath.fill()
            pressedColor.setStroke()
            pressedRectanglePath.lineWidth = 2
            pressedRectanglePath.stroke()


            //// Pressed  Oval Drawing
            let pressedOvalPath = UIBezierPath(ovalInRect: CGRect(x: pressed.minX + floor(pressed.width * 0.03093 + 0.5), y: pressed.minY + floor(pressed.height * 0.11538) + 0.5, width: floor(pressed.width * 0.26804 + 0.5) - floor(pressed.width * 0.03093 + 0.5), height: floor(pressed.height * 0.88462) - floor(pressed.height * 0.11538)))
            pressedInnerColor.setStroke()
            pressedOvalPath.lineWidth = 2
            pressedOvalPath.stroke()


            //// Pressed  Star Drawing
            let pressedStarPath = UIBezierPath()
            pressedStarPath.moveToPoint(CGPoint(x: pressed.minX + 0.15212 * pressed.width, y: pressed.minY + 0.19223 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.17224 * pressed.width, y: pressed.minY + 0.40288 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.23582 * pressed.width, y: pressed.minY + 0.40497 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.18733 * pressed.width, y: pressed.minY + 0.54872 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.20385 * pressed.width, y: pressed.minY + 0.74918 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.15715 * pressed.width, y: pressed.minY + 0.64594 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.10184 * pressed.width, y: pressed.minY + 0.75936 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.11692 * pressed.width, y: pressed.minY + 0.54872 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.06843 * pressed.width, y: pressed.minY + 0.40497 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.13201 * pressed.width, y: pressed.minY + 0.40288 * pressed.height))
            pressedStarPath.addLineToPoint(CGPoint(x: pressed.minX + 0.15212 * pressed.width, y: pressed.minY + 0.19223 * pressed.height))
            pressedStarPath.closePath()
            pressedInnerColor.setStroke()
            pressedStarPath.lineWidth = 1
            pressedStarPath.stroke()


            //// Pressed Text Drawing
            let pressedTextRect = CGRect(x: pressed.minX + floor(pressed.width * 0.29897 + 0.5), y: pressed.minY + floor(pressed.height * 0.25641 + 0.5), width: floor(pressed.width * 0.96907 + 0.5) - floor(pressed.width * 0.29897 + 0.5), height: floor(pressed.height * 0.76923 + 0.5) - floor(pressed.height * 0.25641 + 0.5))
            let pressedTextStyle = NSMutableParagraphStyle()
            pressedTextStyle.alignment = .Center

            let pressedTextFontAttributes = [NSFontAttributeName: UIFont.systemFontOfSize(UIFont.labelFontSize()), NSForegroundColorAttributeName: pressedInnerColor, NSParagraphStyleAttributeName: pressedTextStyle]

            let pressedTextTextHeight: CGFloat = NSString(string: btnText).boundingRectWithSize(CGSize(width: pressedTextRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: pressedTextFontAttributes, context: nil).size.height
            CGContextSaveGState(context!)
            CGContextClipToRect(context!, pressedTextRect)
            NSString(string: btnText).drawInRect(CGRect(x: pressedTextRect.minX, y: pressedTextRect.minY + (pressedTextRect.height - pressedTextTextHeight) / 2, width: pressedTextRect.width, height: pressedTextTextHeight), withAttributes: pressedTextFontAttributes)
            CGContextRestoreGState(context!)
        }
    }

    public class func drawBubbleButton(frame: CGRect = CGRect(x: 14, y: 10, width: 94, height: 51)) {
        //// Color Declarations
        let normalFillColor = MyStyleKit.normalColor.colorWithHue(0.2)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.moveToPoint(CGPoint(x: frame.maxX - 11.35, y: frame.minY + 7.33))
        bezierPath.addLineToPoint(CGPoint(x: frame.maxX - 11.16, y: frame.minY + 7.37))
        bezierPath.addCurveToPoint(CGPoint(x: frame.maxX - 8.37, y: frame.minY + 10.16), controlPoint1: CGPoint(x: frame.maxX - 9.86, y: frame.minY + 7.85), controlPoint2: CGPoint(x: frame.maxX - 8.85, y: frame.minY + 8.86))
        bezierPath.addCurveToPoint(CGPoint(x: frame.maxX - 8, y: frame.minY + 14.64), controlPoint1: CGPoint(x: frame.maxX - 8, y: frame.minY + 11.34), controlPoint2: CGPoint(x: frame.maxX - 8, y: frame.minY + 12.44))
        bezierPath.addLineToPoint(CGPoint(x: frame.maxX - 8, y: frame.maxY - 21.64))
        bezierPath.addCurveToPoint(CGPoint(x: frame.maxX - 8.33, y: frame.maxY - 17.35), controlPoint1: CGPoint(x: frame.maxX - 8, y: frame.maxY - 19.44), controlPoint2: CGPoint(x: frame.maxX - 8, y: frame.maxY - 18.34))
        bezierPath.addLineToPoint(CGPoint(x: frame.maxX - 8.37, y: frame.maxY - 17.16))
        bezierPath.addCurveToPoint(CGPoint(x: frame.maxX - 11.16, y: frame.maxY - 14.37), controlPoint1: CGPoint(x: frame.maxX - 8.85, y: frame.maxY - 15.86), controlPoint2: CGPoint(x: frame.maxX - 9.86, y: frame.maxY - 14.85))
        bezierPath.addCurveToPoint(CGPoint(x: frame.maxX - 15.64, y: frame.maxY - 14), controlPoint1: CGPoint(x: frame.maxX - 12.34, y: frame.maxY - 14), controlPoint2: CGPoint(x: frame.maxX - 13.44, y: frame.maxY - 14))
        bezierPath.addLineToPoint(CGPoint(x: frame.minX + 0.56900 * frame.width, y: frame.maxY - 14))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 0.50650 * frame.width, y: frame.maxY - 7), controlPoint1: CGPoint(x: frame.minX + 0.53883 * frame.width, y: frame.maxY - 10.62), controlPoint2: CGPoint(x: frame.minX + 0.50650 * frame.width, y: frame.maxY - 7))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 0.44400 * frame.width, y: frame.maxY - 14), controlPoint1: CGPoint(x: frame.minX + 0.50650 * frame.width, y: frame.maxY - 7), controlPoint2: CGPoint(x: frame.minX + 0.47417 * frame.width, y: frame.maxY - 10.62))
        bezierPath.addLineToPoint(CGPoint(x: frame.minX + 15.64, y: frame.maxY - 14))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 11.35, y: frame.maxY - 14.33), controlPoint1: CGPoint(x: frame.minX + 13.44, y: frame.maxY - 14), controlPoint2: CGPoint(x: frame.minX + 12.34, y: frame.maxY - 14))
        bezierPath.addLineToPoint(CGPoint(x: frame.minX + 11.16, y: frame.maxY - 14.37))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 8.37, y: frame.maxY - 17.16), controlPoint1: CGPoint(x: frame.minX + 9.86, y: frame.maxY - 14.85), controlPoint2: CGPoint(x: frame.minX + 8.85, y: frame.maxY - 15.86))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 8, y: frame.maxY - 21.64), controlPoint1: CGPoint(x: frame.minX + 8, y: frame.maxY - 18.34), controlPoint2: CGPoint(x: frame.minX + 8, y: frame.maxY - 19.44))
        bezierPath.addLineToPoint(CGPoint(x: frame.minX + 8, y: frame.minY + 14.64))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 8.33, y: frame.minY + 10.35), controlPoint1: CGPoint(x: frame.minX + 8, y: frame.minY + 12.44), controlPoint2: CGPoint(x: frame.minX + 8, y: frame.minY + 11.34))
        bezierPath.addLineToPoint(CGPoint(x: frame.minX + 8.37, y: frame.minY + 10.16))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 11.16, y: frame.minY + 7.37), controlPoint1: CGPoint(x: frame.minX + 8.85, y: frame.minY + 8.86), controlPoint2: CGPoint(x: frame.minX + 9.86, y: frame.minY + 7.85))
        bezierPath.addCurveToPoint(CGPoint(x: frame.minX + 15.64, y: frame.minY + 7), controlPoint1: CGPoint(x: frame.minX + 12.34, y: frame.minY + 7), controlPoint2: CGPoint(x: frame.minX + 13.44, y: frame.minY + 7))
        bezierPath.addLineToPoint(CGPoint(x: frame.maxX - 15.64, y: frame.minY + 7))
        bezierPath.addCurveToPoint(CGPoint(x: frame.maxX - 11.35, y: frame.minY + 7.33), controlPoint1: CGPoint(x: frame.maxX - 13.44, y: frame.minY + 7), controlPoint2: CGPoint(x: frame.maxX - 12.34, y: frame.minY + 7))
        bezierPath.closePath()
        normalFillColor.setFill()
        bezierPath.fill()
        MyStyleKit.normalColor.setStroke()
        bezierPath.lineWidth = 2
        bezierPath.stroke()
    }

}



extension UIColor {
    func colorWithHue(newHue: CGFloat) -> UIColor {
        var saturation: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(nil, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: newHue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
    func colorWithSaturation(newSaturation: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(&hue, saturation: nil, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: newSaturation, brightness: brightness, alpha: alpha)
    }
    func colorWithBrightness(newBrightness: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(&hue, saturation: &saturation, brightness: nil, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation, brightness: newBrightness, alpha: alpha)
    }
    func colorWithAlpha(newAlpha: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, brightness: CGFloat = 1.0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: nil)
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: newAlpha)
    }
    func colorWithHighlight(highlight: CGFloat) -> UIColor {
        var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return UIColor(red: red * (1-highlight) + highlight, green: green * (1-highlight) + highlight, blue: blue * (1-highlight) + highlight, alpha: alpha * (1-highlight) + highlight)
    }
    func colorWithShadow(shadow: CGFloat) -> UIColor {
        var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return UIColor(red: red * (1-shadow), green: green * (1-shadow), blue: blue * (1-shadow), alpha: alpha * (1-shadow) + shadow)
    }
}
