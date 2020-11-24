//
//  Role.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 29/10/20.
//

import Foundation

public class Role {
    
    private var name : String
    private var description: String?
    
    public init(name: String) {
        self.name = name
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getDescription() -> String? {
        return description
    }
    
    public func setDescription(description: String) {
        self.description = description
    }
}
