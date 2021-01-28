//
//  RoleService.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 28/01/21.
//

public class RoleService {
    
    private let roleRepository: RoleRepository
    
    public init(roleRepository: RoleRepository) {
        self.roleRepository = roleRepository
    }
    
    public func getRoles() -> [Role] {
        return roleRepository.getRoles()
    }
}
