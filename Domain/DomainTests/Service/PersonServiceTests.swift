//
//  PersonServiceTests.swift
//  DomainTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 23/12/20.
//

import XCTest
import Mockingbird
@testable import Domain

class PersonServiceTests: XCTestCase {
    
    func test_savePerson_personWithRightParameters_successful() throws {
        
        //Arrange
        let personId: String = "Admin01"
        let personRepository: PersonRepositoryMock = mock(PersonRepository.self)
        given(personRepository.personExists(id: personId)).willReturn(false)
        
        let person: Person = try createPerson(id: personId)
        let personService: PersonService = PersonService(personRepository: personRepository)
        
        //Act
        try personService.savePerson(person: person)
        
        //Assert
        verify(personRepository.savePerson(person: person)).wasCalled()
    }
    
    func test_savePerson_personExists_execption() throws {
        
        //Arrange
        let personId: String = "Admin01"
        let personRepository: PersonRepositoryMock = mock(PersonRepository.self)
        given(personRepository.personExists(id: personId)).willReturn(true)
        
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
