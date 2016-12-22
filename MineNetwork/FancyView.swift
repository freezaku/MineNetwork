//
//  FancyView.swift
//  MineNetwork
//
//  Created by 徐鸿力 on 16/12/21.
//  Copyright © 2016年 Honglix Xu. All rights reserved.
//

import UIKit

class FancyView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: <#T##CGFloat#>).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
    }
}
