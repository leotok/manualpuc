//
//  EsportesViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 08/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class EsportesViewController: UIViewController,SWRevealViewControllerDelegate {
    
    var sideMenuButton = UIBarButtonItem()
    
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.navigationBar.topItem?.title = "Esporte"
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        let background = UIImageView(image: UIImage(named: "paperBackground"))
        background.frame = view.frame
        
        view.addSubview(background)
        
        setupNavigationController()
        
        addLayout()
        
        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = Selector("revealToggle:")
            
            
        }
    }
    
    private func setupNavigationController(){
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.translucent = false
        //        self.navigationController?.navigationBar.topItem?.titleView = tripify
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
        let revealController :SWRevealViewController = self.revealViewController()
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        sideMenuButton.tintColor = UIColor.whiteColor()
        sideMenuButton.image = UIImage(named: "MenuButton")
        
        self.navigationItem.leftBarButtonItem = sideMenuButton
        
        
        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = Selector("revealToggle:")
        }
    }
    
    func addLayout() {
     
        let button1 = UIButton()
        button1.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 2.92 )
        button1.center = CGPointMake( self.view.frame.width / 2.000 , self.view.frame.height / 4 )
        button1.setTitle("Equipes", forState: .Normal)
        button1.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button1.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 20)
        button1.addTarget(self, action: Selector("equipesAction"), forControlEvents: UIControlEvents.TouchUpInside)
        button1.setImage(UIImage(named: "ginasio"), forState: .Normal)
        button1.clipsToBounds = true
        self.view.addSubview(button1)
        
        let label1 = UILabel()
        label1.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 10 )
        label1.center = button1.center
        label1.text = "Equipes"
        label1.textAlignment = NSTextAlignment.Center
        label1.font = UIFont(name: "HelveticaNeue-Thin", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        label1.textColor = UIColor.whiteColor()
        self.view.addSubview(label1)
        
        let button2 = UIButton()
        button2.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 2.92 )
        button2.center = CGPointMake( self.view.frame.width / 2.0 , self.view.frame.height / 1.5 )
        button2.setTitle("Atividades", forState: .Normal)
        button2.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button2.titleLabel?.font = UIFont(name: "HelveticaNeue-Light", size: 20)
        button2.addTarget(self, action: Selector("atividadesAction"), forControlEvents: UIControlEvents.TouchUpInside)
        button2.setImage(UIImage(named: "academia"), forState: .Normal)
        self.view.addSubview(button2)
        
        let label2 = UILabel()
        label2.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 10 )
        label2.center = button2.center
        label2.text = "Atividades"
        label2.textAlignment = NSTextAlignment.Center
        label2.font = UIFont(name: "HelveticaNeue-Thin", size: view.frame.height / 16.675)
        label2.numberOfLines = -1
        label2.textColor = UIColor.whiteColor()
        self.view.addSubview(label2)
        
    }
    
    func equipesAction() {
    
        navigationController?.pushViewController(EquipesViewController(), animated: true)
        
    
    }
    
    func atividadesAction() {
        
        navigationController?.pushViewController(AtividadesViewController(), animated: true)
        
    }
    
    
}
