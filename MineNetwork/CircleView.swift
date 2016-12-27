//
//  CircleView.swift
//  MineNetwork
//
//  Created by 徐鸿力 on 16/12/23.
//  Copyright © 2016年 Honglix Xu. All rights reserved.
//

import UIKit

class CircleView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = self.frame.width / 2
        clipsToBounds = true
    }

}
