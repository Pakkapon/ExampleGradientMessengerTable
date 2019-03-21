//
//  MessageRightCell.swift
//  Drivemate
//
//  Created by Pakkapon Kidpaisansub on 10/10/2561 BE.
//  Copyright © 2561 Drivemate Co., Ltd. All rights reserved.
//
import UIKit

class MessageRightCell: UITableViewCell {
    
    @IBOutlet weak var timelbl: UILabel!
    @IBOutlet weak var msgLbl: UILabel!
    @IBOutlet weak var msgView: CustomUIView!
    @IBOutlet weak var frontView: UIView!
    
    static let identifier = "MessageRightCell"
    
    func setData() {
        msgLbl.text = "Challenges are what make life interesting and overcoming them is what makes life meaningful."
        timelbl.text = "20.03.2019 11:11"
    }
    
    func setMask(with hole: CGRect, in view: UIView){
        
        let path = UIBezierPath(rect: view.bounds)
        let pathWithRadius = UIBezierPath(roundedRect: hole, byRoundingCorners: [.allCorners], cornerRadii: CGSize(width: 6, height: 6))
        path.append(pathWithRadius)

        // Create a shape layer and cut out the intersection
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        mask.fillRule = CAShapeLayerFillRule.evenOdd
        
        // Add the mask to the view
        view.layer.mask = mask
        
    }
    
}
