//
//  ViewController.swift
//  BYMusic
//
//  Created by lby on 16/11/21.
//  Copyright © 2016年 lby. All rights reserved.
//

import UIKit
import SnapKit

//宏
let SCREEN_WIDTH = UIScreen.main.bounds.width
let SCREEN_HEIGHT = UIScreen.main.bounds.height


class BYHomeVC: UINavigationController
{

     public func RGB(r:CGFloat,g:CGFloat,b:CGFloat)->UIColor
     {
        return UIColor(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //视图背景色
        self.view.backgroundColor = self.RGB(r: 60,g: 179,b: 113)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "img_01"), style: .plain, target: self, action: #selector(showPerFormation))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "img_02"), style: .plain, target: self, action: #selector(search))
        
        //头部视图
//        let topView = UIView(frame: CGRect(x: 0,y: 0,width: SCREEN_WIDTH,height: 66))
//        let topView = UIView()
//        topView.snp.makeConstraints { (make) in
        
//        }
//        topView.backgroundColor = self.RGB(r: 46, g: 139, b: 255)
        
//        let topLab = UILabel(frame: CGRect(x: 50, y: 5, width: 30, height: 20))
        let topLab = UILabel()
//        topView.addSubview(topLab)
        //约束
        topLab.snp.makeConstraints { (make) in
            make.left.right.equalTo(self.view)
            make.top.equalTo(self.view.snp.top)
            make.height.equalTo(40)
        }
        
//        self.view.addSubview(topView)
    }
    
    //个人信息展示
    func showPerFormation() -> Void
    {
        self.navigationController?.pushViewController(UIViewController() , animated: true)
    }

    //查询
    func search() -> Void
    {
        self.navigationController?.pushViewController(UIViewController() , animated: true)
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

