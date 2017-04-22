//
//  JSONDownLoader.swift
//  Stormy
//
//  Created by Manish Chaturvedi on 4/21/17.
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
                completion(nil,.requestFaliure)
                return
            }
        
        if httpResponse.statusCode == 200 {
            if let data = data {
                
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:AnyObject]
                    completion(json, nil)
                    
                } catch {
                    completion( nil, .jsonConversionFaliure)
                }
                
            } else {
                
                completion(nil, .invalidData)
            }
            
        }
        else {
            completion(nil, .responseUnSucessful)
        }
        
        
        
        }
        return dataTask
    }
}
