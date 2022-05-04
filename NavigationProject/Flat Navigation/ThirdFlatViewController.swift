//
//  ThirdFlatViewController.swift
//  NavigationProject
//
//  Created by Alessandra Pereira on 02/05/22.
//

import UIKit

class ThirdFlatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Função viewDidLoad do ThirdFlatViewController foi chamada")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Função viewDidAppear do ThirdFlatViewController foi chamada")
    }

    @IBAction func dismissTabBarController() {
        self.tabBarController?.dismiss(animated: true)
    }
    
    
}
