//
//  PersonServiceCuckooTests.swift
//  DomainTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 18/01/21.
//

import XCTest
import Cuckoo
@testable import Domain

class PersonServiceCuckooTests: XCTestCase {
    
    func test_savePerson_personWithRightParameters_successful() throws {
        
        //Arrange
        let personId: String = "Admin01"
        let personRepository = MockPersonRepository()
        
        let person: Person = try createPerson(id: personId)
        
        stub(personRepository) { stub in
            when(stub.personExists(id: personId)).thenReturn(false)
        }
        
        stub(personRepository) { stub in
            when(stub.savePerson(person: person)).thenDoNothing()
        }
        
        let personService: PersonService = PersonService(personRepository: personRepository)
        
        //Act
        try personService.savePerson(person: person)
        
        //Assert
        verify(personRepository, times(1)).personExists(id: personId)
    }
    
    func test_savePerson_personExists_execption() throws {
        
        //Arrange
        let personId: String = "Admin01"
        let personRepository = MockPersonRepository()
        
        stub(personRepository) { stub in
            when(stub.personExists(id: personId)).thenReturn(true)
        }
        
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
