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
        self.view.backgroundColor = UIColor.whiteColor()
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        
        
        let background = UIImageView(image: UIImage(named: "paperBackground"))
        background.frame = view.frame
        
        view.addSubview(background)
        
        setupNavigationController()
        
        // TableView
        
        tableView = UITableView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height - (navigationController?.navigationBar.frame.height)!), style: UITableViewStyle.Plain)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.userInteractionEnabled = true
        tableView.alwaysBounceVertical = true
        tableView.scrollEnabled = true
        
        tableView.backgroundColor = UIColor.clearColor()
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None

        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = Selector("revealToggle:")


        }
        
        self.view.addSubview(tableView)
        
    }

    private func setupNavigationController(){
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
      
        let revealController :SWRevealViewController = self.revealViewController()
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        self.navigationController?.navigationBar.topItem?.title = "#topDicas"
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
        self.view.addGestureRecognizer(revealController.panGestureRecognizer())
        
        sideMenuButton.tintColor = UIColor.whiteColor()
        sideMenuButton.image = UIImage(named: "MenuButton")
        
        self.navigationItem.leftBarButtonItem = sideMenuButton
        
        
        if self.revealViewController() != nil{
            
            sideMenuButton.target = self.revealViewController()
            sideMenuButton.action = Selector("revealToggle:")
            revealController.viewDisabled = tableView
        }
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        
        if cell == nil {
            cell = ListaCell(style: .Default, reuseIdentifier: cellIdentifier)
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
        cellBackground.frame.size = CGSizeMake(view.frame.width, view.frame.height / 3)
        cellBackground.center = (cell?.center)!
        cell?.backgroundView = cellBackground
       
        cell!.tag = indexPath.row
        
        return cell!

    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
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

    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }

}
