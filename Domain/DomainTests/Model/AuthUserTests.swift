//
//  AuthUserTests.swift
//  DomainTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 12/01/21.
//

import XCTest
@testable import Domain

class AuthUserTests: XCTestCase {
    
    func test_createAuthUserWithRightPassword_successful() throws {
        
        //Arrange
        let roles: Array<Role> = createRoles()
        let expectedPassword: String = "abc123AB"
        
        //Act
        let authUser: AuthUser = try AuthUser(userId: "User01", password: expectedPassword, roles: roles)
        
        //Assert
        XCTAssertEqual(expectedPassword, authUser.getPassword())
    }
    
    func test_createUserWithEmptyPassword_exception() throws {
        
        //Arrange
        let roles: Array<Role> = createRoles()
        let expectedPassword: String = ""
        
        //Act
        //Assert
        XCTAssertThrowsError(try AuthUser(userId: "User01", password: expectedPassword, roles: roles))
    }
    
    func test_createUserWithoutNumbersInPassword_exception() throws {
        
        //Arrange
        let roles: Array<Role> = createRoles()
        let expectedPassword: String = "abcdABCD"
        
        //Act
        //Assert
        XCTAssertThrowsError(try AuthUser(userId: "User01", password: expectedPassword, roles: roles))
    }
    
    func test_createUserWithoutLettersInPassword_exception() throws {
        
        //Arrange
        let roles: Array<Role> = createRoles()
        let expectedPassword: String = "12345678"
        
        //Act
        //Assert
        XCTAssertThrowsError(try AuthUser(userId: "User01", password: expectedPassword, roles: roles))
    }
    
    func test_createUserWithoutCapitalLettersInPassword_exception() throws {
        
        //Arrange
        let roles: Array<Role> = createRoles()
        let expectedPassword: String = "abcd1234"
        
        //Act
        //Assert
        XCTAssertThrowsError(try AuthUser(userId: "User01", password: expectedPassword, roles: roles))
    }
    
    func test_createUserWithoutLowercaseLettersInPassword_exception() throws {
        
        //Arrange
        let roles: Array<Role> = createRoles()
        let expectedPassword: String = "ABCD1234"
        
        //Act
        //Assert
        XCTAssertThrowsError(try AuthUser(userId: "User01", password: expectedPassword, roles: roles))
    }
    
    func test_createUserWithLessThanEightCharactersInPassword_exception() throws {
        
        //Arrange
        let roles: Array<Role> = createRoles()
        let expectedPassword: String = "abc123A"
        
        //Act
        //Assert
        XCTAssertThrowsError(try AuthUser(userId: "User01", password: expectedPassword, roles: roles))
    }
    
    private func createRoles() -> Array<Role> {
        
        let role: Role = Role(name: "Admin")
        role.setDescription(description: "Administrador")
        var roles: Array<Role> = Array<Role>()
        roles.append(role)
        return roles
    }
}


