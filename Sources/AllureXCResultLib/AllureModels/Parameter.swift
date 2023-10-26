//
//  Parameter.swift
//  
//
//  Created by Vladislav Kiryukhin on 20.12.2021.
//

import Foundation

// see: https://github.com/allure-framework/allure-java/tree/2.17.2/allure-model/src/main/java/io/qameta/allure/model/Parameter.java
public struct Parameter: Encodable {
    internal init(name: String, value: String, excluded: Bool, mode: Parameter.Mode) {
        self.name = name
        self.value = value
        self.excluded = excluded
        self.mode = mode
    }
    
    public let name: String
    public let value: String
    public let excluded: Bool
    public let mode: Mode

    public enum Mode: String, Encodable {
        case hidden
        case masked
        case `default`
    }
}
