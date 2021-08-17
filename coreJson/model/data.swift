//
//  data.swift
//  coreJson
//
//  Created by Jaskirat Mangat on 2021-08-05.
//

import Foundation

struct Response1: Codable,Identifiable {
    
    struct frnd: Codable,Identifiable {
        var id: String
        var name: String
    }
    
    var id: String
    var name: String
    var age: Int
    var company: String
    var email: String
    var about: String
    var friends : [frnd]
}

