//
//  ViewController.swift
//  SinMotion
//
//  Created by luowei on 2016/10/17.
//  Copyright © 2016年 wodedata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySinMotionView: MySinMotionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderMoved(_ sender: UISlider) {
        mySinMotionView.x = CGFloat(sender.value)
    }

}

