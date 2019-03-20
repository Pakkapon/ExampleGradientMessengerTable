//
//  Utils.swift
//  ExampleGradientTable
//
//  Created by Pakkapon Kidpaisansub on 20/3/2562 BE.
//  Copyright © 2562 Pakkapon Kidpaisansub. All rights reserved.
//

import Foundation

class Utils {

    class var shared: Utils {
        struct Static {
            static let instance: Utils = Utils()
        }
        return Static.instance
    }

  
}

    
