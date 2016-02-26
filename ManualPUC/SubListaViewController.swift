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
//    case Dormir = "Dormir"
    case Tomada = "Tomada"
    case Vila = "Vila"
    case NuncaVi = "Nunca Vi"
    case Xerox = "Xerox"
    
}

class SubListaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var subTableView: UITableView!
    var subListaType: SubListaTypeEnum!
    
    var banheirosImageArray = ["banheiro1","banheiro2"]
    var banheirosTitleArray = ["Banheiro do IAG","Banheiro da Pastoral"]
    
    var estudoImageArray = ["estudar1","estudar2","estudar3","estudar4","estudar5","estudar6"]
    var estudoTitleArray = ["Pastoral","Mesas IAG","Mais mesas IAG","Mesas perto do Kennedy","Mesas RDC","Mesas perto do Dep. de Adm"]
    
//    var dormirImageArray = ["soneca","soneca","soneca","soneca","soneca","soneca"]
//    var dormirTitleArray = ["Anfiteatro","Bibliotecas","Sofas da vila","Bosque","algum lugar","outro lugar"]
    
    var tomadaImageArray = ["tomadaBiblio","tomadaBosque","tomadaIag","tomadaLeme"]
    var tomadaitleArray = ["Biblioteca","Anfiteatro","Arquibancada do IAG","Arquibancada do Leme"]
    
    var vilaImageArray = ["vilaDaaf","vilaCafil","vilaCraa","vilaDaft","vilaCapsi","vilaCag","vilaEnfermaria"]
    var vilaTitleArray = ["DAAF","CAFIL","CRAA","DAFT","CAPSI", "CAG", "Enfermaria"]
    
    var nuncaViImageArray = ["escondido","nuncavi1","nuncavi2","nuncavi3"]
    var nuncaViTitleArray = ["Solar Grandjean de Montigny","Sala de música da Pastoral","Tenda de desgin","Estatua Bizarra"]
    
    var xeroxImageArray = ["vilaXeroxEng","vilaXerox","xeroxFunc","xeroxLeme"]
    var xeroxTitleArray = ["Xerox DAAF","Xerox APG","Xerox Funcionários","Xerox Leme"]
    
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
//        else if subListaType == SubListaTypeEnum.Dormir {
//            image = UIImage(named: dormirImageArray[indexPath.section])
//            (cell as! SubListaCellTableViewCell).label.text = dormirTitleArray[indexPath.section]
//        }
        else if subListaType == SubListaTypeEnum.Estudo {
            image = UIImage(named: estudoImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = estudoTitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.Tomada {
            image = UIImage(named: tomadaImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = tomadaitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.Vila {
            image = UIImage(named: vilaImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = vilaTitleArray[indexPath.section]
        }
        else if subListaType == SubListaTypeEnum.NuncaVi {
            image = UIImage(named: nuncaViImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = nuncaViTitleArray[indexPath.section]
        }
        else if subListaType == .Xerox {
            image = UIImage(named: xeroxImageArray[indexPath.section])
            (cell as! SubListaCellTableViewCell).label.text = xeroxTitleArray[indexPath.section]
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
        return 220//250
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        if subListaType == SubListaTypeEnum.Vila{
            return vilaImageArray.count
        }
        else if subListaType == .Tomada {
            return tomadaImageArray.count
        }
        else if subListaType == .Xerox {
            return xeroxImageArray.count
        }
        else if subListaType == .Banheiro {
            return banheirosImageArray.count
        }
        else if subListaType == .Estudo {
            return estudoImageArray.count
        }
        else if subListaType == .NuncaVi {
            return nuncaViImageArray.count
        }
        return 6
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 2
    }
    
}
