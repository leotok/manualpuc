//
//  ManualViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class ManualViewController: UIViewController,SWRevealViewControllerDelegate {
    
    var sideMenuButton = UIBarButtonItem()
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.navigationController?.navigationBar.topItem?.title = "Manual"
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
    
    func infoAction() {
        
        navigationController?.pushViewController(InfoViewController(), animated: true)
        
    }
    
    func addLayout() {
        
        // Label
        
        let label1 = UILabel()
        label1.frame.size = CGSize( width: self.view.frame.width / 1.2 , height: self.view.frame.height / 4.918 )
        label1.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 8 )
        label1.text = "Manual de Sobrevivência Universitária:"
        label1.textAlignment = NSTextAlignment.center
        label1.font = UIFont(name: "3Dumb", size: view.frame.height / 18.93)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
        
        let label2 = UILabel()
        label2.frame.size = CGSize( width: self.view.frame.width / 2 , height: self.view.frame.height / 9.965 )
        label2.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 4 )
        label2.text = "PUC-Rio"
        label2.textAlignment = NSTextAlignment.center
        label2.font = UIFont(name: "3Dumb", size: view.frame.height / 14.95)
        self.view.addSubview(label2)
        
        let label3 = UILabel()
        label3.frame.size = CGSize( width: self.view.frame.width / 1.2 , height: self.view.frame.height / 6 )
        label3.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 2.3 )
        label3.text = "Primeiro dia de aula e não sabe onde fica a sala L776. Terceiro período e ainda não sabe onde comprar um café mais em conta. Prefere nem mais contar o período e nunca viu a tenda de design!"
        label3.textAlignment = NSTextAlignment.center
        label3.numberOfLines = -1
        label3.font = UIFont(name: "Avenir-Light", size: view.frame.height / 43.69)
        self.view.addSubview(label3)
        
        let label4 = UILabel()
        label4.frame.size = CGSize( width: self.view.frame.width / 1.3 , height: self.view.frame.height / 17 )
        label4.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 1.3 )
        label4.text = "Nunca é tarde para conhecer sua faculdade. #euSobreviviPUCRio"
        label4.textAlignment = NSTextAlignment.center
        label4.numberOfLines = -1
        label4.font = UIFont(name: "Avenir-Light", size: view.frame.height / 51.63)
        self.view.addSubview(label4)
        
        // ImageView
        
        let image1 = UIImageView()
        image1.frame.size = CGSize( width: self.view.frame.width / 0.941 , height: self.view.frame.height / 6.000 )
        image1.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 1.65 )
        image1.image = UIImage(named:"puc")
        self.view.addSubview(image1)
        
        // Button
        
        let button1 = UIButton()
        button1.frame.size = CGSize( width: self.view.frame.height / 20 , height: self.view.frame.height / 20  )
        button1.center = CGPoint( x: self.view.center.x, y: self.view.frame.height - 85 )
        button1.setImage(UIImage(named: "Info"), for: UIControlState())
        button1.addTarget(self, action: #selector(ManualViewController.infoAction), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button1)
        
        /***   😎 Built with Sourcery™ 😁  ***/
    }

    
}
