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
                            
                            print(response, "Any luck???")
//                            do {
//                                let parsedResults: [DataModel] = [try! decoder.decode(DataModel.self, from: response.data!)]
//                            print("Delete me", parsedResults.count)
//                            completionHandler(parsedResults)
//                            }
        }
    }
}
