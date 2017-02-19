//
//  WBComposeTypeView.swift
//  EasyWeibo
//
//  Created by BBC6BAE9 on 2017/2/19.
//  Copyright © 2017年 BBC6BAE9. All rights reserved.
//

import UIKit

/// 撰写微博类型视图
class WBComposeTypeView: UIView {
    //有了XIB这个地方就不用留了
    //    override init(frame: CGRect) {
    //        super.init(frame: frame)
    //        backgroundColor = UIColor.cz_random()
    //
    //
    //    }
    //
    //    required init?(coder aDecoder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
    //    }
    
    
    class func composeTyperView()->WBComposeTypeView{
        
        
        let nib = UINib(nibName: "WBComposeTypeView", bundle: nil)
        let v = nib.instantiate(withOwner: nil, options: nil)[0] as! WBComposeTypeView
        //XIB默认加载时600x600
        v.frame = UIScreen.main.bounds
        
        return v
        
    }
    
    func show(){
        // 将当前视图添加到 根部视图控制器
        
        guard let vc = UIApplication.shared.keyWindow?.rootViewController else{
            return
        }
        
        vc.view.addSubview(self)
        
    }
}