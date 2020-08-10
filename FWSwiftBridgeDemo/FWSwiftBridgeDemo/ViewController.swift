//
//  ViewController.swift
//  FWSwiftBridgeDemo
//
//  Created by wuyong on 2020/8/7.
//  Copyright © 2020 site.wuyong. All rights reserved.
//

import UIKit
import FWSwiftBridge
import WechatOpenSDK
import AlipaySDK

class ViewController: UIViewController, WXApiDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ViewController"
        
        WXApi.registerApp("", universalLink: "")
        AlipaySDK.defaultService()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "ObjC", style: .plain, target: self, action: #selector(onObjc))
    }
    
    @objc func onObjc() {
        self.navigationController?.pushViewController(ObjcController(), animated: true)
    }

}
