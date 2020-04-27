//
//  NetworkingClient.swift
//  TapStore
//
//  Created by Piero Junior Gaetani on 11/03/2020.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import Foundation
import Alamofire

class NetworkingClient{
    
    typealias WebServiceResponse = ([[String:Any]]?, Error?) -> Void
    
    func execute( url:URL, completion: @escaping WebServiceResponse){
        AF.request(url).validate().responseJSON{response in
            if let error = response.error{
                completion( nil, error)
                
            } else if let jsonArray = response.value  as? [[String: Any]] {
                completion(jsonArray, nil)
            }else if let jsonDict = response.value  as? [String: Any] {
            completion([jsonDict], nil)
            }
                    
        }
    }

}
