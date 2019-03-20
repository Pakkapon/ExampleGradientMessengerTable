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
    
    static let identifier = "MessageRightCell"
    
    func setData() {
        msgLbl.text = "Challenges are what make life interesting and overcoming them is what makes life meaningful."
        timelbl.text = "20.03.2019 11:11"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
