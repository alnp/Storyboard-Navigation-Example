//
//  CViewController.swift
//  NavigationProject
//
//  Created by Alessandra Pereira on 02/05/22.
//

import UIKit

class CViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func dismissToFirstViewController(_ sender: Any) {
        performSegue(withIdentifier: "dismissToFirstViewController", sender: self)
    }
}

