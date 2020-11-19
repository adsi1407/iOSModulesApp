//
//  Person.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 19/11/20.
//

import Foundation

public class Person {
    
    private var id: String
    private var name: String
    private var authUser: AuthUser
    
    public init(id: String, name: String, authUser: AuthUser) {
        self.id = id
        self.name = name
        self.authUser = authUser
    }
    
    public func getId() -> String {
        return id
    }
    
    public func getName() -> String {
        return name
    }
    
    public func getAuthUser() -> AuthUser {
        return authUser
    }
}
