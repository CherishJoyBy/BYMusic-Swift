//
//  ViewController.swift
//  BYMusic
//
//  Created by lby on 16/11/21.
//  Copyright © 2016年 lby. All rights reserved.
//

import UIKit
import SnapKit
let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height


class BYHomeVC: UIViewController {

     public func RGB(r:CGFloat,g:CGFloat,b:CGFloat)->UIColor{
        
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = self.RGB(r: 60,g: 179,b: 113)
        
        let topView = UIView(frame: CGRect(x: 0,y: 0,width: SCREEN_WIDTH,height: 66))
        topView.backgroundColor = UIColor.init(red: 46/255.0, green: 139/255.0, blue: 89/255.0, alpha: 1.0)
        let topBtn = UILabel(frame: CGRect(x: 50, y: 5, width: 30, height: 20))
        topView.addSubview(topBtn)
        self.view.addSubview(topView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

