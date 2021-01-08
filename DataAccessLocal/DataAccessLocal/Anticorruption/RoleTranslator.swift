//
//  RoleTranslator.swift
//  DataAccessLocal
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 7/01/21.
//

import Domain

class RoleTranslator {
    
    func fromDatabaseEntityToDomainModel(roleEntity: RoleEntity) -> Role {
        
        let role: Role = Role(name: roleEntity.name)
        role.setDescription(description: roleEntity.roleDescription)
        return role
    }
}
