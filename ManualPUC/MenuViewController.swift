//
//  MenuViewController.swift
//  chp3
//
//  Created by Leonardo Edelman Wajnsztok on 25/05/15.
//  Copyright (c) 2015 Leonardo Edelman Wajnsztok. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var tableViewMenu = UITableView(frame: CGRectZero, style: UITableViewStyle.Grouped)
    var presentedRow = Int()
    
    override func viewWillAppear(animated: Bool) {
        
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        let bgImage = UIImageView(image: UIImage(named: "menuBackground"))
        bgImage.frame = CGRectMake(0, 24, self.view.bounds.width, self.view.bounds.height)
        
        let logo = UIImageView(image: UIImage(named: "manualminiLogo"))
        logo.frame.size = CGSizeMake( self.view.frame.width / 2, self.view.frame.width / 4)
        logo.center = CGPointMake( self.view.frame.width / (1.23 * 2) , self.view.bounds.height / 6.2)
        
        self.tableViewMenu.frame = CGRectMake(20, (self.view.frame.size.height) / 4, self.view.frame.size.width, self.view.frame.size.height)
        
        
        //self.tableViewMenu.setEditing(false, animated: false)
        self.tableViewMenu.backgroundColor = UIColor.clearColor()
        self.tableViewMenu.separatorColor = UIColor.darkGrayColor()
        self.tableViewMenu.bounces = false
        self.tableViewMenu.delegate = self
        self.tableViewMenu.dataSource = self
        tableViewMenu.userInteractionEnabled = true

        self.view.addSubview(bgImage)
        self.view.addSubview(logo)
        self.view.addSubview(tableViewMenu)
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        let revealController = revealViewController()
        
        if indexPath.row == presentedRow
        {
            revealController.setFrontViewPosition(FrontViewPosition.Left, animated: true)
        }
        else if indexPath.row == 2
        {
            revealController.setFrontViewPosition(FrontViewPosition.RightMost, animated: true)
        }
        else if indexPath.row == 3
        {
            revealController.setFrontViewPosition(FrontViewPosition.Right, animated: true)
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
        revealController.pushFrontViewController(newFrontController, animated: true)
        presentedRow = indexPath.row


    
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cellIdentifier = "menuCell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        
        
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: cellIdentifier)
        }
        if (indexPath.row == 0)
        {
            cell?.textLabel?.text = " O Manual"
        }
        else if (indexPath.row == 1)
        {
            cell?.textLabel?.text = " Universidade"
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
            cell?.textLabel?.text = " Comes e bebes"
        }
        else if (indexPath.row == 5)
        {
            cell?.textLabel?.text = " Esporte"
        }

        
        cell?.textLabel?.numberOfLines = -1
        cell?.selectionStyle = UITableViewCellSelectionStyle.None
//        cell?.textLabel?.font = UIFont(name: "MarkerFelt-Thin", size: view.frame.height / 33)
                cell?.textLabel?.font = UIFont(name: "palitoon", size: view.frame.height / 25)
//        cell?.textLabel?.font = UIFont(name: "Noteworthy-Light", size: view.frame.height / 33)
        cell?.backgroundColor = UIColor.clearColor()
        cell?.textLabel?.textColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
    
        
        return cell!
    }
    
   func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
      
        return view.frame.height / 9.5
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
}
