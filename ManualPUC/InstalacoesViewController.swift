//
//  InfoViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class InstalacoesViewController: UIViewController {
    
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
        
        self.navigationItem.title = ""
        self.navigationController?.navigationBar.tintColor = .whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
    }
    
    
    func addLayout() {
        // Caixas
        
        let label1 = UILabel()
        label1.frame.size = CGSizeMake( self.view.frame.width  , self.view.frame.height / 10 )
        label1.center = CGPointMake( self.view.frame.width / 2 , self.view.frame.height / 19 )
        label1.text = " Caixas Eletrônicos:"
        label1.textAlignment = NSTextAlignment.Left
        label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
        
        let label21 = UILabel()
        label21.frame.size = CGSizeMake( self.view.frame.width - 20, self.view.frame.height / 2.5 )
        label21.center = CGPointMake( self.view.frame.width / 2 , self.view.frame.height / 4.6 )
        label21.text = "- Agência do Banco Itaú-Edifício Frings, próximo as escadas que dao acesso ao Bandejão e ao Primeiro andar\n - Caixa eletrônico do Banco do Brasil-Edificio Frings, ao lado dos elevadores e Edifício Leme proximo ao Bar das Freiras\n - Caixa eletrônico Itaú-Edifício Leme, em frente da sala da equipe Riobotz"
        label21.textAlignment = NSTextAlignment.Left
        label21.font = UIFont(name: "palitoon", size: view.frame.height / 40)
        label21.numberOfLines = -1
        self.view.addSubview(label21)
        
        // Orelhão
        
        let label3 = UILabel()
        label3.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 10 )
        label3.center = CGPointMake( self.view.frame.width / 2 , self.view.frame.height / 2.6 )
        label3.text = " Orelhão:"
        label3.textAlignment = NSTextAlignment.Left
        label3.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label3.numberOfLines = -1
        self.view.addSubview(label3)
        
        let label31 = UILabel()
        label31.frame.size = CGSizeMake( self.view.frame.width - 20 , self.view.frame.height / 2.876 )
        label31.center = CGPointMake( self.view.frame.width / 2 , self.view.frame.height / 2 )
        label31.text = "Apesar de parecer um mito, existem orelhões no campus. Um deles fica em frente ao Ginásio da PUC. Para os destraídos que esquecem o celular em casa ou então acabaram com a bateria logo na primeira aula do dia.\n#nãoValeLigarÀCobrar #9090"
        label31.textAlignment = NSTextAlignment.Justified
        label31.font = UIFont(name: "palitoon", size: view.frame.height / 40)
        label31.numberOfLines = -1
        self.view.addSubview(label31)
        
        // Estacionamento
        
        let label4 = UILabel()
        label4.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 10 )
        label4.center = CGPointMake( self.view.frame.width / 2 , self.view.frame.height / 1.6 )
        label4.text = " Estacionamento:"
        label4.textAlignment = NSTextAlignment.Left
        label4.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label4.numberOfLines = -1
        self.view.addSubview(label4)
        
        let label41 = UILabel()
        label41.frame.size = CGSizeMake( self.view.frame.width - 20 , self.view.frame.height / 2.876 )
        label41.center = CGPointMake( self.view.frame.width / 2 , self.view.frame.height / 1.4 )
        label41.text = "PUC-Rio: …........................................................................ R$ 10,00\nShopping da Gávea (c/ carteirinha): .................... R$10,00\nPlanetário: ....................................................................... R$12,00"
        label41.textAlignment = NSTextAlignment.Justified
        label41.font = UIFont(name: "palitoon", size: view.frame.height / 40)
        label41.numberOfLines = -1
        self.view.addSubview(label41)
        
        
    }
}
