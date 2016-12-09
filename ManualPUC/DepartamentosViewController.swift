//
//  InfoViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 06/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

class DepartamentosViewController: UIViewController {
    
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
        label1.text = " Departamentos:"
        label1.textAlignment = NSTextAlignment.justified
        label1.font = UIFont(name: "palitoon", size: view.frame.height / 16.675)
        label1.numberOfLines = -1
        self.view.addSubview(label1)
        
        
        let mitos = UITextView(frame: CGRect(x: 0, y: view.frame.height / 9, width: view.frame.width, height: view.frame.height - (navigationController?.navigationBar.frame.height)! - view.frame.height / 9))
        mitos.isScrollEnabled = true
        mitos.font = UIFont(name: "palitoon", size: view.frame.height / 30)
        mitos.backgroundColor = UIColor.clear
        mitos.textAlignment = .left
        mitos.isEditable = false
        mitos.text = " http://iag.puc-rio.br/pt/ - Departamento de ADM\nhttp://www.cau.puc-rio.br/home/ - Departamento de arquitetura e Urbanismo\n\nhttp://dad.puc-rio.br/ - Departamento de Artes e design\nhttp://www.cis.puc-rio.br/ - Dept de Ciencias Sociais\nhttp://www.com.puc-rio.br/- Dept de Comunicação Social\nhttp://www.jur.puc-rio.br/ - Direito\nhttp://www.econ.puc-rio.br/- Economia\nhttp://www.edu.puc-rio.br/- Educação\nhttp://www.civ.puc-rio.br/pt/index.php- Engenharia Civil\nhttp://www.ele.puc-rio.br/- Engenharia Eletrica\nhttp://www.mec.puc-rio.br/- Eng Mecânica\nhttp://www.fil.puc-rio.br/- Filosofia\nhttp://www.fis.puc-rio.br/- Física\nhttp://www.his.puc-rio.br/- História\nhttp://www.inf.puc-rio.br/- Informática\nhttp://www.letras.puc-rio.br/- Letras\nhttp://www.mat.puc-rio.br/- Matemática\nhttp://www.psi.puc-rio.br/site/- Psicologia\nhttp://www.qui.puc-rio.br/- Química\nhttp://www.ser.puc-rio.br/- Serviço Social\nhttp://www.teo.puc-rio.br/- Teologia\nhttp://www.iri.puc-rio.br/- Relações internacionais\n"
        view.addSubview(mitos)
        
    }
}
