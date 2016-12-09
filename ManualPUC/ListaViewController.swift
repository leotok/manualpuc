//
//  GenericViewController.swift
//  chp3
//
//  Created by Leonardo Edelman Wajnsztok on 01/11/15.
//  Copyright (c) 2015 Leonardo Edelman Wajnsztok. All rights reserved.
//

import UIKit

class ListaViewController: UIViewController,SWRevealViewControllerDelegate, UITableViewDelegate , UITableViewDataSource{
    
    var sideMenuButton = UIBarButtonItem()
    var tableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
        
        
        let background = UIImageView(image: UIImage(named: "paperBackground"))
        background.frame = view.frame
        
        view.addSubview(background)
        
        setupNavigationController()
        
        // TableView
        
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height - (navigationController?.navigationBar.frame.height)!), style: UITableViewStyle.plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.isUserInteractionEnabled = true
        tableView.alwaysBounceVertical = true
        tableView.isScrollEnabled = true
        
        tableView.backgroundColor = UIColor.clear
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none

        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))


        }
        
        self.view.addSubview(tableView)
        
    }

    fileprivate func setupNavigationController(){
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
      
        let revealController :SWRevealViewController = self.revealViewController()
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        self.navigationController?.navigationBar.topItem?.title = "#topDicas"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        sideMenuButton.tintColor = UIColor.white
        sideMenuButton.image = UIImage(named: "MenuButton")
        
        self.navigationItem.leftBarButtonItem = sideMenuButton
        
        
        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealController.viewDisabled = tableView
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        if cell == nil {
            cell = ListaCell(style: .default, reuseIdentifier: cellIdentifier)
        }
        
        var image: UIImage!
        
        
        if indexPath.section == 0 {
            
            (cell as! ListaCell).label.text = "Banheiros"
            image = UIImage(named: "banheiro")
        }
//        else if indexPath.section == 1{
//            (cell as! ListaCell).label.text = "Lugares para dormir"
//            image = UIImage(named: "soneca")
//        }
        else if indexPath.section == 1{
            (cell as! ListaCell).label.text = "Lugares para estudar"
            image = UIImage(named: "estudar2")
        }
        else if indexPath.section == 2{
            (cell as! ListaCell).label.text = "Lugares com tomada"
            image = UIImage(named: "tomadaIag")
        }
        else if indexPath.section == 3{
            (cell as! ListaCell).label.text = "Vila dos Diretórios"
            image = UIImage(named: "vila")
        }
        else if indexPath.section == 4{
            (cell as! ListaCell).label.text = "Estudo na PUC, mas nunca vi!"
            image = UIImage(named: "escondido")
        }
        else if indexPath.section == 5{
            (cell as! ListaCell).label.text = "Xerox"
            image = UIImage(named: "vilaXeroxEng")
        }
        else {
            image = nil
        }
        let cellBackground = UIImageView(image: image)
        cellBackground.frame.size = CGSize(width: view.frame.width, height: view.frame.height / 3)
        cellBackground.center = (cell?.center)!
        cell?.backgroundView = cellBackground
       
        cell!.tag = indexPath.row
        
        return cell!

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
        let subLista = SubListaViewController()
        
        if indexPath.section == 0 {
            subLista.subListaType = .Banheiro
        }
//        else if indexPath.section == 1 {
//            subLista.subListaType = .Dormir
//        }
        else if indexPath.section == 1 {
            subLista.subListaType = .Estudo
        }
        else if indexPath.section == 2 {
            subLista.subListaType = .Tomada
        }
        else if indexPath.section == 3 {
            subLista.subListaType = .Vila
        }
        else if indexPath.section == 4 {
            subLista.subListaType = .NuncaVi
        }
        else if indexPath.section == 5 {
            subLista.subListaType = .Xerox
        }
        
        navigationController?.pushViewController(subLista, animated: true)
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }

}
