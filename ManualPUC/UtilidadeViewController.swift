//
//  InfoViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class UtilidadeViewController: UIViewController {
    
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
        label1.text = " Utilidade Particular:"
        label1.textAlignment = NSTextAlignment.Justified
        label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
    
        let label2 = UILabel()
        label2.frame = CGRectMake( view.frame.width / 1.5 , label1.frame.origin.y + 10, self.view.frame.width / 2, self.view.frame.height / 10 )
        label2.text = " (PUC é nois!)"
        label2.textAlignment = NSTextAlignment.Left
        label2.font = UIFont(name: "palitoon", size: view.frame.height / 48)
        label2.numberOfLines = -1
        self.view.addSubview(label2)
        
        
        let mitos = UITextView(frame: CGRectMake(0, view.frame.height / 9, view.frame.width, view.frame.height - (navigationController?.navigationBar.frame.height)! - view.frame.height / 9))
        mitos.scrollEnabled = true
        mitos.font = UIFont(name: "palitoon", size: view.frame.height / 30)
        mitos.backgroundColor = UIColor.clearColor()
        mitos.textAlignment = .Justified
        mitos.editable = false
        mitos.text = "- Todo aluno tem direito a 100 impressões no RDC por semestre.\n- Todo aluno cursando alguma matéria de Informática tem direito a 50 impressões por semestre.\n- Alguns livros utilizados pelos professores existem nas Bibliotecas para serem alugados.\n- Achados e perdidos fica na Prefeitura do Campus (Frings, em frente ao Caixa Eletrônico).\n\n- Coeficiente de Rendimento Acumulado:\n\nCR = [ (CP x CRP) + (CC * CRA) ] / (CP + CC)\n\n.CP = Créditos cursados no período\n.CRP = CR referente ao período cursado\n.CC = Total créditos cursados\n.CRA = CR acumulado\n\n- Links úteis:\n\nhttp://www.carrascomamata.com.br\nhttps://www.passeidireto.com\nhttps://www.respondeai.com.br\nhttps://www.facebook.com/SpottedPUCRio/\nhttps://www.facebook.com/groups/provasengenharia/\nhttps://www.facebook.com/riobotz/\nhttps://www.facebook.com/rioaero/\nhttps://www.facebook.com/bajapucrio/\nhttps://www.facebook.com/formulapucrio/\n"
        
        view.addSubview(mitos)
        
    }
}
