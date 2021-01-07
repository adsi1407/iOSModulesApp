//
//  PersonRepositoryRemote.swift
//  DataAccessRemote
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 7/01/21.
//

import Domain

public class PersonRepositoryRemote: PersonRepository {
    
    public init() {}
    
    public func personExists(id: String) -> Bool {
        return false
    }
    
    public func savePerson(person: Person) {
        print("Person saved with id \(person.getId())")
    }
    
}
