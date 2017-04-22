//
//  Coordnate.swift
//  Stormy
//
//  Created by Manish Chaturvedi on 4/22/17.
//  Copyright © 2017 Apple. All rights reserved.
//
import Foundation

struct Coordinate {
    let latitude: Double
    let longitude: Double
}

extension Coordinate: CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)"
    }
}
