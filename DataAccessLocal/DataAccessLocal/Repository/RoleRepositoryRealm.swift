//
//  RoleRepositoryRealm.swift
//  DataAccessLocal
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 7/01/21.
//

import Domain

public class RoleRepositoryRealm: RoleRepository {
    
    private var database : Realm
    
    public init() {
        try! database = Realm()
        
        seedRoles()
    }
    
    public func getRoles() -> [Role] {
        
        let roleEntities = database.objects(Role.self)
        let roleTranslator: RoleTranslator = RoleTranslator()
        let roles : [Role] = []
        
        for roleEntity in roleEntities {
            roles.append(roleTranslator.fromDatabaseEntityToDomainModel(roleEntity: roleEntity))
        }
        
        return roles
    }
    
    private func seedRoles() {
        let roles = database.objects(Role.self)
        
        if roles.count == 0 {
            let defaultRoles: RoleEntity[] = []
            
            let adminRole : RoleEntity = RoleEntity()
            adminRole.name = "Admin"
            adminRole.description = "System administrator. Full access."
            defaultRoles.append(adminRole)
            
            let userRole : RoleEntity = RoleEntity()
            userRole.name = "User"
            userRole.description = "Normal user. Some functionalities."
            defaultRoles.append(userRole)
            
            try! database.write() {
                
                for newRole in defaultRoles {
                    database.add(newRole)
                }
            }
        }
    }
    
}
