//
//  String+emoji.swift
//  Lec1
//
//  Created by Sean Yeh on 6/10/20.
//  Copyright © 2020 Sean Yeh. All rights reserved.
//

import Foundation

extension String{
    static func randomEmoji()->String{
        let range = [UInt32](0x1F601...0x1F64F)
        let ascii = range[Int(drand48() * (Double(range.count)))]
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
}
