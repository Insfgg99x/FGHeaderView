//
//  FGHeaderView.swift
//  FGHeaderView Demo
//
//  Created by 夏桂峰 on 16/9/19.
//  Copyright © 2016年 夏桂峰. All rights reserved.
//

import Foundation
import UIKit

var fg_originFrame="fg_originFrame"
var fg_imageView="fg_imageView"

extension UITableView{
    
    
    public func fg_setHeaderView(frame:CGRect,image:UIImage?){
        
        objc_setAssociatedObject(self, &fg_originFrame, frame, .OBJC_ASSOCIATION_RETAIN)
        let header=UIView.init(frame: frame)
        self.tableHeaderView=header;
        let imv=UIImageView.init(frame: frame)
        imv.image=image;
        imv.contentMode = .scaleAspectFill
        self .insertSubview(imv, at: 0)
        objc_setAssociatedObject(self, &fg_imageView, imv, .OBJC_ASSOCIATION_RETAIN)
        self.addObserver(self, forKeyPath: "contentOffset", options: .new, context: nil)
    }
    override open func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        let origin=objc_getAssociatedObject(self, &fg_originFrame) as? CGRect
        let imv=objc_getAssociatedObject(self, &fg_imageView) as? UIImageView
        let offset=self.contentOffset.y
        if offset<0{
            imv?.frame=CGRect.init(x: offset, y: offset, width: (origin?.size.width)!-2*offset, height: (origin?.size.height)!-offset)
        }else{
            imv?.frame=origin!
        }
    }
    
}
