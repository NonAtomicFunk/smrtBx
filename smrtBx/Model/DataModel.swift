//
//  DataModel.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import Foundation

struct DataModel: Codable {
    let id: String
    let type: String
    let title: String
    let shortDescription: String
    let description: String
    let smallImage: String
    let bigImage: String
    let latitude: Double
    let longitude: Double
}
