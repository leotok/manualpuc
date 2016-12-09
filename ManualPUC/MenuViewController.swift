//
//  MenuViewController.swift
//  chp3
//
//  Created by Leonardo Edelman Wajnsztok on 25/05/15.
//  Copyright (c) 2015 Leonardo Edelman Wajnsztok. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var tableViewMenu = UITableView(frame: CGRect.zero, style: UITableViewStyle.grouped)
    var presentedRow = Int()
    
    override func viewWillAppear(_ animated: Bool) {
        
        UIApplication.shared.statusBarStyle = UIStatusBarStyle.lightContent
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        let bgImage = UIImageView(image: UIImage(named: "menuBackground"))
        bgImage.frame = CGRect(x: 0, y: 24, width: self.view.bounds.width, height: self.view.bounds.height)
        
        let logo = UIImageView(image: UIImage(named: "manualminiLogo"))
        logo.frame.size = CGSize( width: self.view.frame.width / 2, height: self.view.frame.width / 4)
        logo.center = CGPoint( x: self.view.frame.width / (1.23 * 2) , y: self.view.bounds.height / 6.2)
        
        self.tableViewMenu.frame = CGRect(x: 20, y: (self.view.frame.size.height) / 4, width: self.view.frame.size.width, height: self.view.frame.size.height)
        
        
        //self.tableViewMenu.setEditing(false, animated: false)
        self.tableViewMenu.backgroundColor = UIColor.clear
        self.tableViewMenu.separatorColor = UIColor.darkGray
        self.tableViewMenu.bounces = false
        self.tableViewMenu.delegate = self
        self.tableViewMenu.dataSource = self
        tableViewMenu.isUserInteractionEnabled = true

        self.view.addSubview(bgImage)
        self.view.addSubview(logo)
        self.view.addSubview(tableViewMenu)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
        let revealController = revealViewController()
        
        if indexPath.row == presentedRow
        {
            revealController?.setFrontViewPosition(FrontViewPosition.left, animated: true)
        }
        else if indexPath.row == 2
        {
            revealController?.setFrontViewPosition(FrontViewPosition.rightMost, animated: true)
        }
        else if indexPath.row == 3
        {
            revealController?.setFrontViewPosition(FrontViewPosition.right, animated: true)
        }
        
        var newFrontController: UIViewController
        
        if indexPath.row == 0
        {
            newFrontController =  UINavigationController(rootViewController: ManualViewController())
        }
        else if indexPath.row == 1
        {
            newFrontController =  UINavigationController(rootViewController: UniversidadeViewController())
        }
        else if indexPath.row == 2
        {
            newFrontController = UINavigationController(rootViewController: ListaViewController())
        }
        else if indexPath.row == 3 {
            newFrontController =  UINavigationController(rootViewController: VeteranoSabeViewController())
        }
        else if indexPath.row == 4 {
            newFrontController =  UINavigationController(rootViewController: ComesBebesViewController())
        }
        else if indexPath.row == 5 {
            newFrontController =  UINavigationController(rootViewController: EsportesViewController())
        }
        else {
            newFrontController =  UINavigationController(rootViewController: UniversidadeViewController())
        }
        revealController?.pushFrontViewController(newFrontController, animated: true)
        presentedRow = indexPath.row


    
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "menuCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: cellIdentifier)
        }
        if (indexPath.row == 0)
        {
            cell?.textLabel?.text = " #oManual"
        }
        else if (indexPath.row == 1)
        {
            cell?.textLabel?.text = " #aFacul"
        }
        else if (indexPath.row == 2)
        {
            cell?.textLabel?.text = " #topDicas"
        }
        else if (indexPath.row == 3)
        {
            cell?.textLabel?.text = " #nemVeteranoSabe" //#sóVeteranoSabe //#descobriNo6ºPeriodo
        }
        else if (indexPath.row == 4)
        {
            cell?.textLabel?.text = " #toComFome"
        }
        else if (indexPath.row == 5)
        {
            cell?.textLabel?.text = " #PUCFitness"
        }

        
        cell?.textLabel?.numberOfLines = -1
        cell?.selectionStyle = UITableViewCellSelectionStyle.none
//        cell?.textLabel?.font = UIFont(name: "MarkerFelt-Thin", size: view.frame.height / 33)
                cell?.textLabel?.font = UIFont(name: "palitoon", size: view.frame.height / 25)
//        cell?.textLabel?.font = UIFont(name: "Noteworthy-Light", size: view.frame.height / 33)
        cell?.backgroundColor = UIColor.clear
        cell?.textLabel?.textColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
    
        
        return cell!
    }
    
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      
        return view.frame.height / 9.5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
}
