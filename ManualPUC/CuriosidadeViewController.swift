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
        
        self.navigationItem.title = ""
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
    }
    

func addLayout() {
    
    let label1 = UILabel()
    label1.frame.size = CGSize( width: self.view.frame.width , height: self.view.frame.height / 10 )
    label1.center = CGPoint( x: self.view.frame.width / 2 , y: self.view.frame.height / 19 )
    label1.text = " Curiosidades e Mitos:"
    label1.textAlignment = NSTextAlignment.justified
    label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
    label1.numberOfLines = -1
    self.view.addSubview(label1)
    
    
    let mitos = UITextView(frame: CGRect(x: 0, y: view.frame.height / 9, width: view.frame.width, height: view.frame.height - (navigationController?.navigationBar.frame.height)! - view.frame.height / 9))
    mitos.isScrollEnabled = true
    mitos.font = UIFont(name: "palitoon", size: view.frame.height / 30)
    mitos.backgroundColor = UIColor.clear
    mitos.textAlignment = .justified
    mitos.isEditable = false
    mitos.text = "1. Os calouros dos cursos de Engenharia não recebem trote ao entrar na faculdade porque uma vez um aluno caiu da ponte e se machucou ao cair no Rio\n\n2. O rio que corta a faculdade se chama Rio Rainha\n\n3. Existe um Acelerador de Particulas no subsolo do prédio Leme\n\n4. Washignton Braga existe sim. Se você não entendeu, verifique seu email do AUTOSAU\n\n5. Não adianta passar o dia inteiro olhando seu email esperando um AUTOSAU, ele irá chegar quando você menos esperar\n\n6. Houve um trote em que alugaram um elefante e o colocaram pra andar pelo campus!\n\n7. O castelo de Hogwarts e suas escadas que se movimentam foram inspirados no prédio Leme. Evite andar sozinho para não se perder entre os andares desconexos do prédio\n\n8. A PUC foi a primeira universidade no Brasil a ter um computador. Ele ocupava um andar inteiro do prédio do RDC\n\n9. O RDC é considerado o lugar mais gelado do mundo, deixando para trás o Pólo Norte e até o LABGRAD\n\n10. Um ser onipresente vive pelo campus e sempre é visto de bigode, camisa havaiana aberta, bermuda e cachimbo\n"
    view.addSubview(mitos)
    
    }
}
