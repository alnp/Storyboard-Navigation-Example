//
//  FirstViewController.swift
//  NavigationProject
//
//  Created by Alessandra Pereira on 02/05/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func returnToFirstViewController( _ segue: UIStoryboardSegue) { }

    @IBAction func dismissFirstViewController() {
        self.dismiss(animated: true)
    }
}

