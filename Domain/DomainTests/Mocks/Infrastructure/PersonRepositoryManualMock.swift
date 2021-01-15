//
//  PersonRepositoryMock.swift
//  DomainTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 14/01/21.
//

import Domain

public class PersonRepositoryManualMock: PersonRepository {
    
    public func personExists(id: String) -> Bool {
        
        switch id {
        case "Admin01":
            return false
        default:
            return true
        }
    }
    
    public func savePerson(person: Person) {
        //Not Implemented
    }
    
    
}
