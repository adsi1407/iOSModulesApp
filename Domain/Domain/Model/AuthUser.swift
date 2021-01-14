//
//  AuthUser.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 29/10/20.
//

public class AuthUser {
    
    private var userId: String
    private var password: String?
    private var roles: Array<Role>
    
    private let passwordPattern: String = #"^(?=\w*\d)(?=\w*[A-Z])(?=\w*[a-z])\S{8,}"#
    
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
        
        return password.range(of: passwordPattern, options: .regularExpression) != nil
    }
}
