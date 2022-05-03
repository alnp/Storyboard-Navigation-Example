//
//  DetailsHierarchicalViewController.swift
//  NavigationProject
//
//  Created by Alessandra Pereira on 02/05/22.
//

import UIKit

class DetailsHierarchicalViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    
    var image: String?
    var nameText: String?
    var firstLabelText: String?
    var secondLabelText: String?
    var thirdLabelText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: image ?? "")
        name.text = nameText
        firstLabel.text = firstLabelText
        secondLabel.text = secondLabelText
        thirdLabel.text = thirdLabelText
    }
}
