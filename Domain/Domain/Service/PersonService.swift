//
//  PersonService.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 19/11/20.
//

import Foundation

public class PersonService {
    
    private let personRepository: PersonRepository
    
    public init(personRepository: PersonRepository) {
        self.personRepository = personRepository
    }
    
    public func savePerson(person: Person) throws {
        
        if personRepository.personExists(id: person.getId()) {
            throw BusinessError.PersonAlreadyExists()
        }
        else {
            personRepository.savePerson(person: person)
        }
    }
}
