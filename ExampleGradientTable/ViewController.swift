//
//  ViewController.swift
//  ExampleGradientTable
//
//  Created by Pakkapon Kidpaisansub on 20/3/2562 BE.
//  Copyright © 2562 Pakkapon Kidpaisansub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var gradient : CAGradientLayer!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let nib = UINib(nibName: "MessageRightCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: MessageRightCell.identifier)
        
        gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        gradient.colors = [
            UIColor(red: 0.0, green: 1.0, blue: 0.752, alpha: 1.0).cgColor,
            UIColor(red: 0.949, green: 0.03, blue: 0.913, alpha: 1.0).cgColor
        ]
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: MessageRightCell.identifier, for: indexPath) as? MessageRightCell {
            cell.setData()
            
            return cell
        }
        return UITableViewCell()
    }

}

