//
//  FirstHierarchicalViewController.swift
//  NavigationProject
//
//  Created by Alessandra Pereira on 02/05/22.
//

import UIKit

class FirstHierarchicalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dismissNavigationController() {
        self.navigationController?.dismiss(animated: true)
    }
    
}


