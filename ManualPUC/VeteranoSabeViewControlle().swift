//
//  EsportesViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 08/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class VeteranoSabeViewController: UIViewController,SWRevealViewControllerDelegate {
    
    var sideMenuButton = UIBarButtonItem()
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.topItem?.title = "#nemVeteranoSabe"
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        let background = UIImageView(image: UIImage(named: "paperBackground"))
        background.frame = view.frame
        
        view.addSubview(background)
        
        setupNavigationController()
        
        addLayout()
        
        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            
            
        }
    }
    
    fileprivate func setupNavigationController(){
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.isTranslucent = false
        //        self.navigationController?.navigationBar.topItem?.titleView = tripify
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        
        let revealController :SWRevealViewController = self.revealViewController()
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        sideMenuButton.tintColor = UIColor.white
        sideMenuButton.image = UIImage(named: "MenuButton")
        
        self.navigationItem.leftBarButtonItem = sideMenuButton
        
        
        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        }
    }
    
    func addLayout() {
        
        let button1 = UIButton()
        button1.frame.size = CGSize( width: self.view.frame.width , height: self.view.frame.height / 2.92 )
        button1.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 4 )
        button1.addTarget(self, action: #selector(VeteranoSabeViewController.curiosidadeAction), for: UIControlEvents.touchUpInside)
        button1.setImage(UIImage(named: "ginasio"), for: UIControlState())
        button1.clipsToBounds = true
        
        let visualEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let effect = UIVisualEffectView(effect: visualEffect)
        effect.frame = button1.frame
        effect.isUserInteractionEnabled = false
        
        let label1 = UILabel()
        label1.frame.size = CGSize( width: self.view.frame.width , height: self.view.frame.height / 10 )
        label1.center = button1.center
        label1.text = "Curiosidades e Mitos"
        label1.textAlignment = NSTextAlignment.center
        label1.font = UIFont(name: "HelveticaNeue-Thin", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        label1.textColor = UIColor.white

        self.view.addSubview(button1)
        self.view.addSubview(effect)
        self.view.addSubview(label1)
        
        let button2 = UIButton()
        button2.frame.size = CGSize( width: self.view.frame.width , height: self.view.frame.height / 2.92 )
        button2.center = CGPoint( x: self.view.frame.width / 2.0 , y: self.view.frame.height / 1.5 )
        button2.addTarget(self, action: #selector(VeteranoSabeViewController.utilidadeAction), for: UIControlEvents.touchUpInside)
        button2.setImage(UIImage(named: "academia"), for: UIControlState())
        self.view.addSubview(button2)
        
        let visualEffect2 = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let effect2 = UIVisualEffectView(effect: visualEffect2)
        effect2.frame = button2.frame
        effect2.isUserInteractionEnabled = false
        self.view.addSubview(effect2)
        
        let label2 = UILabel()
        label2.frame.size = CGSize( width: self.view.frame.width , height: self.view.frame.height / 10 )
        label2.center = button2.center
        label2.text = "Utilidade Particular"
        label2.textAlignment = NSTextAlignment.center
        label2.font = UIFont(name: "HelveticaNeue-Thin", size: view.frame.height / 16.675)
        label2.numberOfLines = -1
        label2.textColor = UIColor.white
        self.view.addSubview(label2)
        
    }
    
    func curiosidadeAction() {
        
        navigationController?.pushViewController(CuriosidadeViewController(), animated: true)
        
        
    }
    
    func utilidadeAction() {
        
        navigationController?.pushViewController(UtilidadeViewController(), animated: true)
        
    }
        
    
}
