//
//  DarkSkyError.swift
//  Stormy
//
//  Created by Manish Chaturvedi on 4/22/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

enum DarkSkyError : Error{
    
    case requestFaliure
    case responseUnSucessful
    case invalidData
    case jsonConversionFaliure
    case invalidUrl
    case jsonParsingFailure
}
