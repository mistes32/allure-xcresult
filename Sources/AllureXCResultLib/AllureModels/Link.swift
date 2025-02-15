//
//  Link.swift
//  
//
//  Created by Vladislav Kiryukhin on 20.12.2021.
//

import Foundation

// see: https://github.com/allure-framework/allure-java/tree/2.17.2/allure-model/src/main/java/io/qameta/allure/model/Link.java
public struct Link: Encodable {
    public init(name: String, url: String, type: String) {
        self.name = name
        self.url = url
        self.type = type
    }
    
    public let name: String
    public let url: String
    public let type: String
}
