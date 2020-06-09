//
//  Array+Identifiable.swift
//  Lec1
//
//  Created by Sean Yeh on 6/7/20.
//  Copyright © 2020 Sean Yeh. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable{
    func firstIndex(matching: Element) -> Int?{
        for index in 0..<self.count{
            if self[index].id == matching.id {
                return index
            }
        }
        return nil //TODO: bogus
    }
}

