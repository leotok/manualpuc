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
    private let cellHeight: CGFloat = 250
    private let cellWidth: CGFloat = UIScreen.mainScreen().bounds.width
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        imageCell = UIImageView()
        imageCell.frame = CGRectMake(0, 0, cellWidth, 180)
//        imageCell.layer.borderWidth = 1
//        imageCell.layer.borderColor = UIColor.whiteColor().CGColor
        imageCell.layer.shadowOffset = CGSizeMake(0, 1)
        imageCell.layer.shadowColor = UIColor.darkGrayColor().CGColor
        imageCell.layer.shadowOpacity = 1
        imageCell.clipsToBounds = false
        self.addSubview(imageCell)
        
        self.backgroundColor = .clearColor()
        
        let blur:UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let effectView:UIVisualEffectView = UIVisualEffectView (effect: blur)
        effectView.frame = CGRectMake(0, 200, cellWidth, 70)
        effectView.clipsToBounds = true
        self.bringSubviewToFront(self.textLabel!)
        
        label = UILabel()
        label.frame.size = CGSizeMake( cellWidth  , 50)
        label.center = CGPointMake( cellWidth / 2 , 195)
        label.textAlignment = .Center
        label.numberOfLines = -1
        label.textColor = UIColor.darkGrayColor()
        label.font = UIFont(name: "Avenir-Light", size: cellWidth / 25.87)
        self.addSubview(label)
        
        infoText = UILabel()
        infoText.frame.size = CGSizeMake(cellWidth - 20, 70)
        infoText.center = CGPointMake(cellWidth / 2, 225)
        infoText.textAlignment = .Left
        infoText.numberOfLines = -1
        infoText.textColor = UIColor.darkGrayColor()
        infoText.font = UIFont(name: "Avenir-Light", size: cellWidth / 34.5)
        self.addSubview(infoText)
        
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
