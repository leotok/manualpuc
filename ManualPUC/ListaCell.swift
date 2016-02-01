//
//  ListaCell.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 01/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import Foundation
import UIKit

class ListaCell: UITableViewCell {
    
    var label: UILabel!
    private let cellHeight: CGFloat = 200
    private let cellWidth: CGFloat = UIScreen.mainScreen().bounds.width
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        let blur:UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.Light)
        let effectView:UIVisualEffectView = UIVisualEffectView (effect: blur)
        effectView.frame.size = CGSizeMake( cellWidth  , self.frame.width / 7)
        effectView.center = CGPointMake( cellWidth / 2 , self.frame.height * 2.5)
        effectView.clipsToBounds = true
        self.addSubview(effectView)
        self.bringSubviewToFront(self.textLabel!)
        
        label = UILabel()
        label.frame.size = CGSizeMake( cellWidth   , self.frame.width / 6)
        label.center = CGPointMake( cellWidth / 2, self.frame.height * 2.5)
        label.textAlignment = .Center
        label.numberOfLines = -1
        label.textColor = UIColor.whiteColor()
        label.font = UIFont(name: "Avenir-Light", size: cellWidth / 19.7)
        self.addSubview(label)
        self.selectionStyle = UITableViewCellSelectionStyle.None
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
