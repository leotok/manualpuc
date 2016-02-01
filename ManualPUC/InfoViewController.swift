//
//  InfoViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var sideMenuButton = UIBarButtonItem()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        let background = UIImageView(image: UIImage(named: "paperBackground"))
        background.frame = view.frame
        
        view.addSubview(background)
        
        setupNavigationController()
        
        addLayout()
    
    }
    
    private func setupNavigationController(){
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        self.navigationItem.title = "Info"
        self.navigationController?.navigationBar.tintColor = .whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
    }
    
    func addLayout() {
        
        // Label
        
        let label1 = UILabel()
        label1.frame.size = CGSizeMake( self.view.frame.width / 1.2 , self.view.frame.height / 4.918 )
        label1.center = CGPointMake( self.view.frame.width / 2.000 , self.view.frame.height / 9 )
        label1.text = "O Projeto"
        label1.textAlignment = NSTextAlignment.Center
        label1.font = UIFont(name: "3Dumb", size: view.frame.height / 18.93)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
        
        let label3 = UITextView()
        label3.backgroundColor = .clearColor()
        label3.scrollEnabled = false
        label3.editable = false
        label3.frame.size = CGSizeMake( self.view.frame.width / 1.157 , self.view.frame.height / 2 )
        label3.center = CGPointMake( self.view.frame.width / 2.000 , self.view.frame.height / 2.2 )
        label3.text = "Com o objetivo de acabar com o sentimento de estar completamente perdido que todos sentimos ao entrar na faculdade, desenvolvemos este manual, para calouros e veteranos que desejam conhecer ao máximo sua universidade. Este projeto foi criado por alunos da PUC-Rio para a aula de Atitude Empreendedora.\n\nQualquer sugestão ou crítica é bem vinda! Envie um email para manualpuc@gmail.com"
        label3.textAlignment = .Justified
        label3.font = UIFont(name: "Avenir-Light", size: view.frame.height / 43.69)
        self.view.addSubview(label3)
        
        let label4 = UILabel()
        label4.frame.size = CGSizeMake( self.view.frame.width / 1.3 , self.view.frame.height / 17 )
        label4.center = CGPointMake( self.view.frame.width / 2.000 , self.view.frame.height / 1.3 )
        label4.text = "Nunca é tarde para conhecer sua faculdade. #euSobreviviPUCRio"
        label4.textAlignment = NSTextAlignment.Center
        label4.numberOfLines = -1
        label4.font = UIFont(name: "Avenir-Light", size: view.frame.height / 51.63)
        self.view.addSubview(label4)
   
        
        /***   😎 Built with Sourcery™ 😁  ***/
    }

}
