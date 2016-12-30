//
//  Location.swift
//  MineNetwork
//
//  Created by 徐鸿力 on 16/12/29.
//  Copyright © 2016年 Honglix Xu. All rights reserved.
//

import Foundation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
