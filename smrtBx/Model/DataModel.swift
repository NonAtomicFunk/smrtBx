//
//  DataModel.swift
//  smrtBx
//
//  Created by admin2 on 1/3/19.
//  Copyright © 2019 Alexander Berezovsky. All rights reserved.
//

import Foundation

struct DataModel: Codable {
    let id: Int
    let type: String
    let title: String
    let shortDescription: String
    let description: String
    let smallImage: String
    let bigImage: String
    let latitude: Double
    let longitude: Double
    
    enum CodingKeys: String, CodingKey {
        case id
        case type
        case title
        case shortDescription
        case description
        case smallImage
        case bigImage
        case latitude
        case longitude
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(title, forKey: .title)
        try container.encode(shortDescription, forKey: .shortDescription)
        try container.encode(description, forKey: .description)
        try container.encode(smallImage, forKey: .smallImage)
        try container.encode(bigImage, forKey: .smallImage)
        try container.encode(latitude, forKey: .latitude)
        try container.encode(longitude, forKey: .longitude)
    }
    
    
    init(id: Int,
        type: String,
        title: String,
        shortDescription: String,
        description: String,
        smallImage: String,
        bigImage: String,
        latitude: Double,
        longitude: Double) {
        
        self.id = id
        self.type = type
        self.title = title
        self.shortDescription = shortDescription
        self.description = description
        self.smallImage = smallImage
        self.bigImage = bigImage
        self.latitude = latitude
        self.longitude = longitude
    }
//    init(from decoder: Decoder) throws {
    
        
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let container = try decoder.codingPath
        
        
//        self.id = try container.decode(String.self, forKey: .id)
//        self.type = try container.decode(String.self, forKey: .type)
//        self.title = try container.decode(String.self, forKey: .title)
//        self.shortDescription = try container.decode(String.self, forKey: .shortDescription)
//        self.description = try container.decode(String.self, forKey: .description)
//        self.bigImage = try container.decode(String.self, forKey: .description)
//        self.smallImage = try container.decode(String.self, forKey: .smallImage)
//        self.latitude = try container.decode(Double.self, forKey: .latitude)
//        self.longitude = try container.decode(Double.self, forKey: .longitude)
//    }
}

//struct DataModelList: Decodable {
//
//    let dmList: [DataModel]
//
//
//    init(from decoder: Decoder) throws {
//
//        let contaiter = try decoder.codingPath
//        self.dmList = try contaiter.
////        let container = try decoder.container(keyedBy: CodingKeys.self)
////        self.dmList = try container.decode([IcCellDataModel].self, forKey: .images)
//    }
//}
