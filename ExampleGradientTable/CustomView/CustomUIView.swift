//
//  CustomUIView.swift
//  Drivemate
//
//  Created by Pakkapon Kidpaisansub on 21/5/2561 BE.
//  Copyright © 2561 Drivemate Co., Ltd. All rights reserved.
//

import UIKit

@IBDesignable class CustomUIView : UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBInspectable var cornerRadius : CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth : CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor : UIColor = .clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
}


