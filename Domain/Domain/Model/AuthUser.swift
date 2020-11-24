//
//  AuthUser.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 29/10/20.
//

import Foundation

public class AuthUser {
    
    private var userId: String
    private var password: String?
    private var roles: Array<Role>
    
    public init(userId: String, password: String, roles: Array<Role>) throws {
        self.userId = userId
        self.roles = roles
        
        try setPassword(password: password)
    }
    
    public func getUserId() -> String {
        return userId
    }
    
    public func getPassword() -> String {
        return password!
    }
    
    public func getRoles() -> Array<Role> {
        return roles
    }
    
    private func setPassword(password: String) throws {
        
        if validatePassword(password: password) {
            self.password = password
        }
        else {
            throw BusinessError.WrongPassword()
        }
    }
    
    private func validatePassword(password: String) -> Bool {
        
        return true
    }
}
