//
//  JSONDownLoader.swift
//  Stormy
//
//  Created by ctsuser1 on 4/21/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import Foundation

class JSONDownLoader {
    
    let urlSession : URLSession
    
    init (configration : URLSessionConfiguration) {
        
        self.urlSession = URLSession(configuration: configration)
    }
    
    convenience init () {
        self.init( configration : .default)
    }
    
    typealias JSON = [String:AnyObject]
    
    func jsonTask( with request: URLRequest, completionHandler completion:@escaping (JSON?, DarkSkyError?)-> Void) ->URLSessionDataTask {

       let dataTask =  urlSession.dataTask(with: request) { data, response, error in
        
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil,.RequestFaliure)
                return
            }
        }
        return dataTask
    }
}
