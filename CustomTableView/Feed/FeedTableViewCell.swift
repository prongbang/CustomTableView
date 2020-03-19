//
//  FeedTableViewCell.swift
//  CustomTableView
//
//  Created by Endtry on 19/3/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import UIKit
import MaterialComponents

class FeedTableViewCell: UITableViewCell {
    
    var onItemClick: (()-> Void) = {}
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var card: MDCCard!
    
    @IBOutlet weak var coverImage: UIImageView!
    
    @objc func didTapCard() {
        onItemClick()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        commonInit()
    }
    
    func commonInit() {
        coverImage.layer.cornerRadius = 8
        card.cornerRadius = 8
        card.setShadowColor(UIColor.black, for: UIControl.State(rawValue: 20))
        
//        let tab = UITapGestureRecognizer.init(target: self, action: #selector(didTapCard))
//        card.addGestureRecognizer(tab)
        
        card.addTarget(self, action: #selector(didTapCard), for: .touchUpInside)
    }
}
