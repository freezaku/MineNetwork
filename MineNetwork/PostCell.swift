//
//  PostCell.swift
//  MineNetwork
//
//  Created by 徐鸿力 on 16/12/26.
//  Copyright © 2016年 Honglix Xu. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var usernameLbl: UILabel!
    
    @IBOutlet weak var caption: UITextView!
    
    @IBOutlet weak var likesLbl: UILabel!
    
    @IBOutlet weak var postImg: UIImageView!
    
    var post: Post!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(post: Post) {
        self.post = post
        self.caption.text = post.caption
        self.likesLbl.text = "\(post.likes)"
    }
}
