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
    fileprivate let cellHeight: CGFloat = 200
    fileprivate let cellWidth: CGFloat = UIScreen.main.bounds.width
    
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        let blur:UIBlurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let effectView:UIVisualEffectView = UIVisualEffectView (effect: blur)
        effectView.frame.size = CGSize( width: cellWidth  , height: self.frame.width / 7)
        effectView.center = CGPoint( x: cellWidth / 2 , y: self.frame.height * 2.5)
        effectView.clipsToBounds = true
        self.addSubview(effectView)
        self.bringSubview(toFront: self.textLabel!)
        
        label = UILabel()
        label.frame.size = CGSize( width: cellWidth   , height: self.frame.width / 6)
        label.center = CGPoint( x: cellWidth / 2, y: self.frame.height * 2.5)
        label.textAlignment = .center
        label.numberOfLines = -1
        label.textColor = UIColor.white
        label.font = UIFont(name: "Avenir-Light", size: cellWidth / 19.7)
        self.addSubview(label)
        self.selectionStyle = UITableViewCellSelectionStyle.none
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
