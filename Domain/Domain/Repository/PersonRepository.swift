//
//  PersonRepository.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 19/11/20.
//

import Foundation

public protocol PersonRepository {
    
    func personExists(id: String) -> Bool
    
    func savePerson(person: Person)
}
