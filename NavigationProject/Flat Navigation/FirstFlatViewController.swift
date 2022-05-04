//
//  FirstFlatViewController.swift
//  NavigationProject
//
//  Created by Alessandra Pereira on 04/05/22.
//

import UIKit

class FirstFlatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Função viewDidLoad do FirstFlatViewController foi chamada")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Função viewDidAppear do FirstFlatViewController foi chamada")
    }
}
