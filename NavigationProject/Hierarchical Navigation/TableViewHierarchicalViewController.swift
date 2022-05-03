//
//  TableViewHierarchicalViewController.swift
//  NavigationProject
//
//  Created by Alessandra Pereira on 02/05/22.
//

import UIKit

class TableViewHierarchicalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    
    let dogs: [Dog] = [Dog(image: "bulldog", breed: "Bulldog", height: "30-61 cm", weight: "23-25 kg", lifeSpan: "8-10 anos"),
                       Dog(image: "catioro", breed: "Catioro", height: "20-50 cm", weight: "4-20 kg", lifeSpan: "10-15 anos"),
                       Dog(image: "chihuahua", breed: "Chihuahua", height: "15-30 cm", weight: "1-4 kg", lifeSpan: "12-20 anos"),
                       Dog(image: "golden", breed: "Golden", height: "51-61 cm", weight: "25-34 kg", lifeSpan: "10-12 anos"),
                       Dog(image: "maltes", breed: "Maltês", height: "20-25 cm", weight: "3-5 kg", lifeSpan: "12-15 anos"),
                       Dog(image: "pastor", breed: "Pastor", height: "55-65 cm", weight: "30-40 kg", lifeSpan: "9-13 anos"),
                       Dog(image: "samoieda", breed: "Samoieda", height: "46-56 cm", weight: "16-30 kg", lifeSpan: "12-14 anos")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dogs")
        cell?.textLabel?.text = dogs[indexPath.row].breed
        cell?.imageView?.image = UIImage(named: dogs[indexPath.row].image)
        return cell ?? UITableViewCell()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "dogDetailsSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let detailsHierarchicalViewController = segue.destination as! DetailsHierarchicalViewController
            detailsHierarchicalViewController.image = dogs[indexPath.row].image
            detailsHierarchicalViewController.nameText = dogs[indexPath.row].breed
            detailsHierarchicalViewController.firstLabelText = dogs[indexPath.row].lifeSpan
            detailsHierarchicalViewController.secondLabelText = dogs[indexPath.row].height
            detailsHierarchicalViewController.thirdLabelText = dogs[indexPath.row].weight
        }
    }
    
}
