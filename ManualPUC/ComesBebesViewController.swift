//
//  ComesBebesViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 08/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class ComesBebesViewController: UIViewController,SWRevealViewControllerDelegate {
    
    var sideMenuButton = UIBarButtonItem()
    
    override func viewWillAppear(animated: Bool) {
        
        self.navigationController?.navigationBar.topItem?.title = "Comes e Bebes"
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
        
        // Açai
        
        let label1 = UILabel()
        label1.frame.size = CGSizeMake( self.view.frame.width / 2.246 , self.view.frame.height / 10 )
        label1.center = CGPointMake( self.view.frame.width / 3.896 , self.view.frame.height / 19 )
        label1.text = "Açaí:"
        label1.textAlignment = NSTextAlignment.Justified
        label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
        
        let label21 = UILabel()
        label21.frame.size = CGSizeMake( self.view.frame.width / 3 , self.view.frame.height / 2.876 )
        label21.center = CGPointMake( self.view.frame.width / 4.5 , self.view.frame.height / 6 )
        label21.text = "Açaí perto do Papito:\n-  200ml ….. 4,50\n- 300ml …... 5,50\n- 400ml …... 6,50\n- 500ml ..... 7,50"
        label21.textAlignment = NSTextAlignment.Justified
        label21.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label21.numberOfLines = -1
        self.view.addSubview(label21)
        
        let label22 = UILabel()
        label22.frame.size = CGSizeMake( self.view.frame.width / 3 , self.view.frame.height / 2.826 )
        label22.center = CGPointMake( self.view.frame.width / 1.85 , self.view.frame.height / 6 )
        label22.text = "Açaí Sarado:\n-  200ml ….. 4,50\n- 300ml …... 5,50\n- 400ml ...... 6,50\n- 770ml ….. 10,50"
        label22.textAlignment = NSTextAlignment.Justified
        label22.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label22.numberOfLines = -1
        self.view.addSubview(label22)
        
        let label23 = UILabel()
        label23.frame.size = CGSizeMake( self.view.frame.width / 3 , self.view.frame.height / 2.826 )
        label23.center = CGPointMake( self.view.frame.width / 1.2 , self.view.frame.height / 6 )
        label23.text = "Açaíway:\n-  200ml ….. 5,00\n- 300ml …... 7,00\n- 400ml ..... 9,00\n- 500ml .... 11,00"
        label23.textAlignment = NSTextAlignment.Justified
        label23.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label23.numberOfLines = -1
        self.view.addSubview(label23)
        
        // Café
        
        let label3 = UILabel()
        label3.frame.size = CGSizeMake( self.view.frame.width / 2.246 , self.view.frame.height / 10 )
        label3.center = CGPointMake( self.view.frame.width / 3.896 , self.view.frame.height / 3.6 )
        label3.text = "Café:"
        label3.textAlignment = NSTextAlignment.Justified
        label3.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label3.numberOfLines = -1
        self.view.addSubview(label3)
        
        let label31 = UILabel()
        label31.frame.size = CGSizeMake( self.view.frame.width / 2.184 , self.view.frame.height / 2.876 )
        label31.center = CGPointMake( self.view.frame.width / 3.5 , self.view.frame.height / 2.6 )
        label31.text = "Café expresso\n- Eruditos ………………….. 3,30\n- Bar das freiras …... 4,00\n- Fastway ………………..... 4,00\n- Banca fora …………..... 2,50\n- Bandeijão(Nespresso)..3,50"
        label31.textAlignment = NSTextAlignment.Justified
        label31.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label31.numberOfLines = -1
        self.view.addSubview(label31)
        
        let label32 = UILabel()
        label32.frame.size = CGSizeMake( self.view.frame.width / 2.162 , self.view.frame.height / 2.826 )
        label32.frame.origin.y = label31.frame.origin.y
        label32.center.x = self.view.frame.width / 1.345
        label32.text = "Cafe normal\n- Banca jornal puc ….................. 1,00\n- Bar das freiras: Peq ………….. 2,00\n                    Grande .... 4,00\n- AFFPUC: Peq ………………………....... 1,50\n           Grande ...................... 2,70\n- Banca jornal puc ….................. 1,00"
        label32.textAlignment = NSTextAlignment.Justified
        label32.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label32.numberOfLines = -1
        self.view.addSubview(label32)

        // Lanchonetes
        
        let button1 = UIButton()
        button1.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 7 )
        button1.center = CGPointMake( self.view.frame.width / 2.000 , self.view.frame.height / 1.7 )
        button1.addTarget(self, action: Selector("lancheAction"), forControlEvents: UIControlEvents.TouchUpInside)
        button1.setImage(UIImage(named: "lanche"), forState: .Normal)
        button1.clipsToBounds = true
        self.view.addSubview(button1)
        
        let labelLanche = UILabel()
        labelLanche.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 10 )
        labelLanche.center = button1.center
        labelLanche.text = "Lanchonetes"
        labelLanche.textAlignment = NSTextAlignment.Center
        labelLanche.font = UIFont(name: "HelveticaNeue-Thin", size: view.frame.height / 16.675)
        labelLanche.numberOfLines = -1
        labelLanche.textColor = UIColor.whiteColor()
        self.view.addSubview(labelLanche)

        // Restaurantes
        
        let button2 = UIButton()
        button2.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 7 )
        button2.center = CGPointMake( self.view.frame.width / 2.000 , self.view.frame.height / 1.3 )
        button2.addTarget(self, action: Selector("restauranteAction"), forControlEvents: UIControlEvents.TouchUpInside)
        button2.setImage(UIImage(named: "restaurantePUC"), forState: .Normal)
        button2.clipsToBounds = true
        self.view.addSubview(button2)
        
        let labelRestaurante = UILabel()
        labelRestaurante.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 10 )
        labelRestaurante.center = button2.center
        labelRestaurante.text = "Restaurantes"
        labelRestaurante.textAlignment = NSTextAlignment.Center
        labelRestaurante.font = UIFont(name: "HelveticaNeue-Thin", size: view.frame.height / 16.675)
        labelRestaurante.numberOfLines = -1
        labelRestaurante.textColor = UIColor.whiteColor()
        self.view.addSubview(labelRestaurante)
    }
    
    func lancheAction() {
        
        
    }
    
    func restauranteAction() {
        
        
    }
    
}
