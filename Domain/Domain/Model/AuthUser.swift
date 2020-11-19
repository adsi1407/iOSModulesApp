//
//  AuthUser.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 29/10/20.
//

import Foundation

public class AuthUser {
    
    private var userId: String
    private var password: String
    private var roles: Array<Role>
    
    public init(userId: String, password: String, roles: Array<Role>) {
        self.userId = userId
        self.password = password
        self.roles = roles
    }
    
    public func getUserId() -> String {
        return userId
    }
    
    public func getPassword() -> String {
        return password
    }
    
    public func getRoles() -> Array<Role> {
        return roles
    }
}
