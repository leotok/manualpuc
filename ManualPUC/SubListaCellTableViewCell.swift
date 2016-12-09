//
//  SubListaCellTableViewCell.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 07/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class SubListaCellTableViewCell: UITableViewCell {
    
    var label: UILabel!
    var infoText: UILabel!
    var imageCell: UIImageView!
    fileprivate let cellHeight: CGFloat = 220//250
    fileprivate let cellWidth: CGFloat = UIScreen.main.bounds.width
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imageCell = UIImageView()
        imageCell.frame = CGRect(x: 0, y: 0, width: cellWidth, height: 180)
        imageCell.layer.shadowOffset = CGSize(width: 0, height: 1)
        imageCell.layer.shadowColor = UIColor.darkGray.cgColor
        imageCell.layer.shadowOpacity = 1
        imageCell.clipsToBounds = false
        self.addSubview(imageCell)
        
        self.backgroundColor = .clear
        
        let blur:UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let effectView:UIVisualEffectView = UIVisualEffectView (effect: blur)
        effectView.frame = CGRect(x: 0, y: 200, width: cellWidth, height: 70)
        effectView.clipsToBounds = true
        self.bringSubview(toFront: self.textLabel!)
        
        label = UILabel()
        label.frame.size = CGSize( width: cellWidth  , height: 50)
        label.center = CGPoint( x: cellWidth / 2 , y: 195)
        label.textAlignment = .center
        label.numberOfLines = -1
        label.textColor = UIColor.darkGray
        label.font = UIFont(name: "Avenir-Light", size: cellWidth / 25.87)
        self.addSubview(label)
        
        infoText = UILabel()
        infoText.frame.size = CGSize(width: cellWidth - 20, height: 70)
        infoText.center = CGPoint(x: cellWidth / 2, y: 225)
        infoText.textAlignment = .left
        infoText.numberOfLines = -1
        infoText.textColor = UIColor.darkGray
        infoText.font = UIFont(name: "Avenir-Light", size: cellWidth / 34.5)
//        self.addSubview(infoText)
        
        self.selectionStyle = UITableViewCellSelectionStyle.none
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
