//
//  SubListaViewController.swift
//  ManualPUC
//
//  Created by Leonardo Edelman Wajnsztok on 07/11/15.
//  Copyright © 2015 LeonardoWajnsztok. All rights reserved.
//

import UIKit

enum SubListaTypeEnum: String {
    
    case Banheiro = "Banheiros"
    case Estudo = "Estudo"
    case Dormir = "Dormir"
    case Frio = "Frio"
    case Vila = "Vila"
    case NuncaVi = "Nunca Vi"
    
}

class SubListaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var subTableView: UITableView!
    var subListaType: SubListaTypeEnum!
    
    var banheirosImageArray = ["banheiro","banheiro","banheiro","banheiro","banheiro","banheiro"]
    var banheirosTitleArray = ["L310","RDC","8+ andar","Departamento X","Labgrad","Fxxx"]
    
    var estudoImageArray = ["sala","sala","sala","sala","sala","sala"]
    var estudoTitleArray = ["Bibliotecas","Mesa bosque","Predio Arquitetura","Mesas Leme","Pastoral","RDC"]
    
    var dormirImageArray = ["soneca","soneca","soneca","soneca","soneca","soneca"]
    var dormirTitleArray = ["Anfiteatro","Bibliotecas","Sofas da vila","Bosque","algum lugar","outro lugar"]
    
    var frioImageArray = ["frio","frio","frio","frio","frio","frio"]
    var frioTitleArray = ["RDC","Labgrad","hsuha","fsudjf","fisjd","kmcvn"]
    
    var vilaImageArray = ["vila","vila","vila","vila","vila","vila"]
    var vilaTitleArray = ["DAAF","CAFIL","CACOS","CAPSI","CADEG","CAPETA"]
    
    var nuncaViImageArray = ["escondido","escondido","escondido","escondido","escondido","escondido"]
    var nuncaViTitleArray = ["Tenda design","Tenda Moderna design","Predio arquitetura","TECGraf","Salas da Pastoral","Jardim Pastoral"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        UIApplication.sharedApplication().statusBarStyle = UIStatusBarStyle.LightContent
        
        
        
        let background = UIImageView(image: UIImage(named: "paperBackground"))
        background.frame = view.frame
        
        view.addSubview(background)
        
        setupNavigationController()
        
        // TableView
        
        subTableView = UITableView(frame: CGRectMake(0, 0, view.frame.width, view.frame.height - 18 - (navigationController?.navigationBar.frame.height)!), style: UITableViewStyle.Plain)
        subTableView.dataSource = self
        subTableView.delegate = self
        subTableView.userInteractionEnabled = true
        subTableView.alwaysBounceVertical = true
        subTableView.scrollEnabled = true
        
        subTableView.backgroundColor = UIColor.clearColor()
        subTableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        self.view.addSubview(subTableView)
        
    }
    
    private func setupNavigationController(){
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.16, green:0.17, blue:0.21, alpha:1)
        self.navigationController?.navigationBar.translucent = false
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        self.navigationItem.title = "\(subListaType.rawValue)"
        self.navigationController?.navigationBar.tintColor = .whiteColor()
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "cell"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier)
        
        if cell == nil {
            cell = SubListaCellTableViewCell(style: .Default, reuseIdentifier: cellIdentifier)
        }
        
        var image: UIImage!
        
        if subListaType == SubListaTypeEnum.Banheiro {
            image = UIImage(named: banheirosImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = banheirosTitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.Dormir {
            image = UIImage(named: dormirImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = dormirTitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.Estudo {
            image = UIImage(named: estudoImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = estudoTitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.Frio {
            image = UIImage(named: frioImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = frioTitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.Vila {
            image = UIImage(named: vilaImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = vilaTitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.NuncaVi {
            image = UIImage(named: nuncaViImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = nuncaViTitleArray[indexPath.section]
        }
        
        (cell as! SubListaCellTableViewCell).imageCell.image = image
        (cell as! SubListaCellTableViewCell).infoText.text = "Esse banheiro é muito bom pq é limpo e cheiroso. Não estraguem. Apenas uma privada, cabine espaçosa pacas com pia."
        
        cell!.tag = indexPath.row
        
        return cell!
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
    }
    
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 250
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
