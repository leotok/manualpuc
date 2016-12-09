//
//  InfoViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class EquipesViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        let background = UIImageView(image: UIImage(named: "paperBackground"))
        background.frame = view.frame
        
        view.addSubview(background)
        
        setupNavigationController()
        
        addLayout()
        
    }
    
    fileprivate func setupNavigationController(){
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        self.navigationItem.title = "Equipes"
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }
    
    func addLayout() {
        
        
        // Label
        
        let label1 = UILabel()
        label1.frame.size = CGSize( width: self.view.frame.width / 2.246 , height: self.view.frame.height / 10 )
        label1.center = CGPoint( x: self.view.frame.width / 3.896 , y: self.view.frame.height / 19 )
        label1.text = "Equipes:"
        label1.textAlignment = NSTextAlignment.justified
        label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
        
        let label21 = UILabel()
        label21.frame.size = CGSize( width: self.view.frame.width / 2.184 , height: self.view.frame.height / 2.876 )
        label21.center = CGPoint( x: self.view.frame.width / 3.855 , y: self.view.frame.height / 4 )
        label21.text = "Futsal Feminino – 12 atletas \nTécnico: Victor Hugo Liberato\nFutsal Masculino – 12 atletas \nTécnico: Victor Hugo Liberato\nVoleibol Feminino – 12 atletas \nTécnico: Orlando Folhes\nVoleibol Masculino – 12 atletas \nTécnico: Orlando Folhes\nNatação – 20 atletas\nTécnico: Fernando Pereira"
        label21.textAlignment = NSTextAlignment.justified
        label21.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label21.numberOfLines = -1
        self.view.addSubview(label21)
        
        let label22 = UILabel()
        label22.frame.size = CGSize( width: self.view.frame.width / 2.162 , height: self.view.frame.height / 2.826 )
        label22.center = CGPoint( x: self.view.frame.width / 1.345 , y: self.view.frame.height / 4 )
        label22.text = "Basquete Feminino – 12 atletas \nTécnico: Luis André\nBasquete Masculino – 12 atletas \nTécnico: Luis André\nFutebol Masculino – 25 atletas \nTécnico: Paulo Júnior\nHandebol Feminino – 20 atletas \nTécnico: Wilson Júnior\nHandebol Masculino – 24 atletas \nTécnico: Wilson Júnior"
        label22.textAlignment = NSTextAlignment.justified
        label22.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label22.numberOfLines = -1
        self.view.addSubview(label22)
        
        let label3 = UILabel()
        label3.frame.size = CGSize( width: self.view.frame.width / 1.069 , height: self.view.frame.height / 5)
        label3.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 2.2 )
        label3.text = "Os alunos que participam das competições podem ser beneficiados com a bolsa esporte que representa um desconto de até 30% no valor da mensalidade."
        label3.textAlignment = NSTextAlignment.justified
        label3.font = UIFont(name: "palitoon", size: view.frame.height / 37.05)
        label3.numberOfLines = -1
        self.view.addSubview(label3)
        
        let label4 = UILabel()
        label4.frame.size = CGSize( width: self.view.frame.width / 1.133 , height: self.view.frame.height / 5 )
        label4.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 1.25 )
        label4.text = "Os alunos que quiserem participar devem procurar a Coordenação de Educação Física ou procurar saber dos eventos de peneira divulgados no Facebook pela equipe."
        label4.textAlignment = NSTextAlignment.justified
        label4.font = UIFont(name: "palitoon", size: view.frame.height / 37.05)
        label4.numberOfLines = -1
        self.view.addSubview(label4)
        
        // ImageView
        
        let image1 = UIImageView()
        image1.frame.size = CGSize( width: self.view.frame.width / 0.973 , height: self.view.frame.height / 5.329 )
        image1.center = CGPoint( x: self.view.frame.width / 2.000 , y: self.view.frame.height / 1.6)
        image1.image = UIImage(named:"timepuc")
        self.view.addSubview(image1)
    }
    
}
