//
//  ViewController.swift
//  Sample
//
//  Created by 李二狗 on 2018/1/5.
//  Copyright © 2018年 Meniny Lab. All rights reserved.
//

import UIKit
import JustLayout

class SampleController: UIViewController {
    
    let bottomView = UIView()
    let centerView = UIView()
    let topView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.translates(subViews: bottomView, centerView, topView)
        
        [bottomView, centerView, topView].style { (v) in
            v.backgroundColor = UIColor(red:0.31, green:0.68, blue:0.33, alpha:0.70)
            v.clipsToBounds = true
        }
        
//        visual()
        chainable()
//        operatorBased()
    }
    
    func visual() {
        view.layout(
            100,
            |-topView-| ~ 80,
            8,
            |-centerView-| ~ 80,
            "",
            |bottomView| ~ 80,
            0
        )
    }
    
    func chainable() {
        bottomView.left(100).top(100).width(100).aspect(ofWidth: 100)
        centerView.left(120).top(120).width(100).aspect(ofWidth: 100)
        topView.left(140).top(140).width(100).aspect(ofWidth: 100)
    }
    
    func operatorBased() {
        bottomView.centerXAttribute == view.centerXAttribute
        bottomView.centerYAttribute == view.centerYAttribute
        bottomView.widthAttribute == 80
        bottomView.heightAttribute == bottomView.widthAttribute
        
        centerView.rightAttribute == bottomView.centerXAttribute
        centerView.topAttribute == bottomView.centerYAttribute
        centerView.widthAttribute == bottomView.widthAttribute
        centerView.heightAttribute == bottomView.heightAttribute
        
        topView.leftAttribute == centerView.rightAttribute
        topView.topAttribute == centerView.topAttribute
        topView.widthAttribute == 50 % centerView.widthAttribute
        topView.heightAttribute == centerView.heightAttribute
    }
}

