//
//  InfoViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class AtividadesViewController: UIViewController {
    
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
        
        self.navigationItem.title = "Atividades"
        self.navigationController?.navigationBar.tintColor = .whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
    }
    
    func addLayout() {
        
        
        // Label
        
        let label1 = UILabel()
        label1.frame.size = CGSizeMake( self.view.frame.width  , self.view.frame.height / 10 )
        label1.center = CGPointMake( self.view.frame.width / 1.85 , self.view.frame.height / 19 )
        label1.text = "Atividades Oferecidas:"
        label1.textAlignment = NSTextAlignment.Justified
        label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
        
        let label21 = UILabel()
        label21.frame.size = CGSizeMake( self.view.frame.width / 2 , self.view.frame.height / 1.4 )
        label21.center = CGPointMake( self.view.frame.width / 3.7 , self.view.frame.height / 2.7 )
        label21.text = "- Yoga\nHorário: 2ª e 4ª – 13:00/14:00h\nHorário: 3ª e 5ª – 19:00/20:00h Local: Ginásio\n- Surfe\nHorário: 6ª – 09:00/11:00h\nHorário: sábados – 08:00/10:00h Local: Praia da Barra\n- Caminhada Ecológica\nHorário: sábados – 08:00/10:00h\n- Pilates\nHorário: 2ª ¬ 12:00/14:00h - Igreja Nossa Sra. Da Conceição\nHorário: 6ª ¬ 07:30/09:30h - Ginásio\nHorário: 6ª ¬ 12:00/14:00h - Igreja Nossa Sra. da Conceição\n- Dança Contemporânea\nHorário: 3ª – 11:00/13:00h - Studio Casa de Pedra\nHorário: 4ª – 08:00/10:00h - Ginásio"
        label21.textAlignment = NSTextAlignment.Justified
        label21.font = UIFont(name: "palitoon", size: view.frame.height / 53.30)
        label21.numberOfLines = -1
        self.view.addSubview(label21)
        
        let label22 = UILabel()
        label22.frame.size = CGSizeMake( self.view.frame.width / 2.162 , self.view.frame.height / 1.4 )
        label22.center = CGPointMake( self.view.frame.width / 1.345 , self.view.frame.height / 2.6 )
        label22.text = "- Natação\nHorário: 3ª e 5ª – 11:00/12:00h\nHorário: 3ª e 5ª – 12:00/13:00h\nHorário: 4ª e 6ª – 11:00/12:00h\nHorário: 4ª e 6ª – 12:00/13:00h Local: C.R.Flamengo\n- FutSal Masculino\nHorário: 3ª e 5ª – 11:00/12:00h Local: Ginásio\n- FutSal Feminino\nHorário: 2ª e 4ª – 18:00/19:00h\nHorário: 3ª – 12:00/13:00 e 5ª – 10:00/11:00h Local: Ginásio\n- Circuit Training\n- Alongamento e Consciência Corporal\nHorário: 3ª e 5ª – 18:00/19:00h Local: Ginásio\n- Ginástica Localizada\nHorário: 3ª e 5ª – 07:00/08:00h\nHorário: 3ª e 5ª – 17:00/18:00h / Local: Ginásio"
        label22.textAlignment = NSTextAlignment.Justified
        label22.font = UIFont(name: "palitoon", size: view.frame.height / 53.30)
        label22.numberOfLines = -1
        self.view.addSubview(label22)

        
        let label4 = UILabel()
        label4.frame.size = CGSizeMake( self.view.frame.width / 1.133 , self.view.frame.height / 3 )
        label4.center = CGPointMake( self.view.frame.width / 2.000 , self.view.frame.height / 1.35 )
        label4.text = "ALUNO: Mensalidade (com exceção do futsal, circuito e surfe): R$90,00\nCircuito e Futsal: R$45,00\nSurfe: R$120,00\nMensalidade para mais atividades: acréscimo de R$40,00 por atividade\nEX-ALUNO PUC-RIO:\n(deve estar vinculado à Associação de Antigos Alunos da PUC-Rio)\nMensalidade Atividade: R$100,00\nCircuito e Futsal: R$50,00\nMensalidade para mais atividades: acréscimo de R$45,00 por atividade"
        label4.textAlignment = NSTextAlignment.Justified
        label4.font = UIFont(name: "palitoon", size: view.frame.height / 53.30)
        label4.numberOfLines = -1
        self.view.addSubview(label4)
        
    }
    
}
