//
//  PersonServiceManualMockTests.swift
//  DomainTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/01/21.
//

import XCTest
@testable import Domain

class PersonServiceManualMockTests: XCTestCase {
    
    func test_savePerson_personWithRightParameters_successful() throws {
        
        //Arrange
        let personId: String = "Admin01"
        let personRepository: PersonRepositoryManualMock = PersonRepositoryManualMock()
        
        let person: Person = try createPerson(id: personId)
        let personService: PersonService = PersonService(personRepository: personRepository)
        
        //Act
        //Assert
        try personService.savePerson(person: person)
    }
    
    func test_savePerson_personExists_execption() throws {
        
        //Arrange
        let personId: String = "Admin02"
        let personRepository: PersonRepositoryManualMock = PersonRepositoryManualMock()
        
        let person: Person = try createPerson(id: personId)
        let personService: PersonService = PersonService(personRepository: personRepository)
        
        //Act
        //Assert
        XCTAssertThrowsError(try personService.savePerson(person: person))
    }
    
    private func createPerson(id: String) throws -> Person {
        
        let role: Role = Role(name: "Admin")
        role.setDescription(description: "Administrador")
        var roles: Array<Role> = Array<Role>()
        roles.append(role)
        
        let authUser = try AuthUser(userId: "User01", password: "abc123AB", roles: roles)
        
        return try Person(id: id, name: "Administrador 01", authUser: authUser)
    }
}
