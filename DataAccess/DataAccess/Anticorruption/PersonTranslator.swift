//
//  PersonTranslator.swift
//  DataAccess
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 19/11/20.
//

import Foundation
import Domain

public class PersonTranslator {
    
    func fromDomainToDto(person: Person) -> PersonDto {
        
        var personDto: PersonDto = PersonDto()
        personDto.id = person.getId()
        personDto.name = person.getName()
        personDto.userId = person.getAuthUser().getUserId()
        personDto.password = person.getAuthUser().getPassword()
        personDto.roles = Array<String>()
        
        for role in person.getAuthUser().getRoles() {
            
            if let description = role.getDescription() {
                personDto.roles?.append("\(role.getName()) - \(description)")
            }
            else {
                personDto.roles?.append("\(role.getName())")
            }
        }
        
        return personDto
    }
}
