//
//  Rest.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import UIKit
import Alamofire

final class Rest {
    static let singleTon = Rest()
    
    
    func getAll(_ completionHandler: @escaping ([DataModel]) -> Void) {
        
        let strUrl = Constants().jsonUrl
        let url = URL(string: strUrl)!
        
        Alamofire.request(url,
                          method: .get,
                          parameters: nil,
                          encoding: JSONEncoding.default,
                          headers: nil).responseJSON { response in
             let decoder = JSONDecoder()
                            print("any result? :", response)
            do {
                
                guard response.result.isSuccess else {
                    print("parsing error: no data")
                    completionHandler([])
                    return
                }
                
                let resultJSON = try JSONSerialization.data(withJSONObject: response.result.value,
                                                            options: .prettyPrinted)
                let encodedStr = String(data: resultJSON, encoding: .utf8)
                let rawData = encodedStr?.data(using: .utf8)
                
                let result = try decoder.decode([DataModel].self,
                                                              from: rawData!)
//                print(result.count)

            } catch(let error) {
                print("d'ou!", error)
            }
        }
    }
}
