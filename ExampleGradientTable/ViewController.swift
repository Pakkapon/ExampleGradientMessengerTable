//
//  ViewController.swift
//  ExampleGradientTable
//
//  Created by Pakkapon Kidpaisansub on 20/3/2562 BE.
//  Copyright © 2562 Pakkapon Kidpaisansub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let pinkColor = UIColor(red:1.00, green:0.56, blue:0.70, alpha:1.0)
    let purpleColor = UIColor(red:0.65, green:0.59, blue:1.00, alpha:1.0)
    let blueColor = UIColor(red:0.00, green:0.90, blue:1.00, alpha:1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "MessageRightCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: MessageRightCell.identifier)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setTableViewBackgroundGradient(sender: tableView, pinkColor, purpleColor, blueColor)
        super.viewDidAppear(animated)
    }
    
    func setTableViewBackgroundGradient(sender: UITableView, _ topColor:UIColor, _ centerColor:UIColor, _ bottomColor:UIColor) {
        
        let gradientBackgroundColors = [topColor.cgColor, centerColor.cgColor,bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientBackgroundColors
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.locations = [0.0 , 0.5 , 1.0]
        gradientLayer.frame = sender.bounds
        
        let backgroundView = UIView(frame: sender.bounds)
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
        sender.backgroundView = backgroundView
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 60
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        if let myCell = cell as? MessageRightCell {
            myCell.backgroundColor = .clear
            myCell.layoutIfNeeded()
            
            let hole = myCell.msgView.frame.integral
            myCell.setMask(with: hole, in: myCell.frontView)
        }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: MessageRightCell.identifier) as? MessageRightCell {
            cell.setData()
            return cell
        }
        return UITableViewCell()
    }
}

