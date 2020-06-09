//
//  Array+Only.swift
//  Lec1
//
//  Created by Sean Yeh on 6/7/20.
//  Copyright © 2020 Sean Yeh. All rights reserved.
//

import Foundation

extension Array {
    var only: Element?{
        count == 1 ? first : nil
    }
}
