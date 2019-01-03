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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(String.self, forKey: .type)
        self.title = try container.decode(String.self, forKey: .title)
        self.shortDescription = try container.decode(String.self, forKey: .shortDescription)
        self.description = try container.decode(String.self, forKey: .description)
        self.bigImage = try container.decode(String.self, forKey: .description)
        self.smallImage = try container.decode(String.self, forKey: .smallImage)
        self.latitude = try container.decode(Double.self, forKey: .latitude)
        self.longitude = try container.decode(Double.self, forKey: .longitude)
    }
}
