//
//  InfoViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class CuriosidadeViewController: UIViewController {
    
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
    
    let label1 = UILabel()
    label1.frame.size = CGSizeMake( self.view.frame.width , self.view.frame.height / 10 )
    label1.center = CGPointMake( self.view.frame.width / 2 , self.view.frame.height / 19 )
    label1.text = " Curiosidades e Mitos:"
    label1.textAlignment = NSTextAlignment.Justified
    label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
    label1.numberOfLines = -1
    self.view.addSubview(label1)
    
    
    let mitos = UITextView(frame: CGRectMake(0, view.frame.height / 9, view.frame.width, view.frame.height - (navigationController?.navigationBar.frame.height)! - view.frame.height / 9))
    mitos.scrollEnabled = true
    mitos.font = UIFont(name: "palitoon", size: view.frame.height / 30)
    mitos.backgroundColor = UIColor.clearColor()
    mitos.textAlignment = .Justified
    mitos.editable = false
    mitos.text = "1. Os calouros dos cursos de Engenharia não recebem trote ao entrar na faculdade porque uma vez um aluno caiu da ponte e se machucou ao cair no Rio\n\n2. O rio que corta a faculdade se chama Rio Rainha\n\n3. Existe um Acelerador de Particulas no subsolo do prédio Leme\n\n4. Washignton Braga existe sim. Se você não entendeu, verifique seu email do AUTOSAU\n\n5. Não adianta passar o dia inteiro olhando seu email esperando um AUTOSAU, ele irá chegar quando você menos esperar\n\n6. Houve um trote em que alugaram um elefante e o colocaram pra andar pelo campus!\n\n7. O castelo de Hogwarts e suas escadas que se movimentam foram inspirados no prédio Leme. Evite andar sozinho para não se perder entre os andares desconexos do prédio\n\n8. A PUC foi a primeira universidade no Brasil a ter um computador. Ele ocupava um andar inteiro do prédio do RDC\n\n9. O RDC é considerado o lugar mais gelado do mundo, deixando para trás o Pólo Norte e até o LABGRAD\n\n10. Um ser onipresente vive pelo campus e sempre é visto de bigode, camisa havaiana aberta, bermuda e cachimbo\n"
    view.addSubview(mitos)
    
    }
}
