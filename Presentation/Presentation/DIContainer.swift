//
//  DIContainer.swift
//  Presentation
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 25/11/20.
//

import Swinject
import Domain
import DataAccessRemote
import DataAccessLocal

public class DIContainer {
    
    private let container: Container = Container()
    
    func registerDependencies() {
        
        container.register(PersonRepository.self) {
            _ in PersonRepositoryRemote()
        }
        
        container.register(PersonService.self) {
            repository in PersonService(personRepository: repository.resolve(PersonRepository.self)!)
        }
        
        container.register(RoleRepository.self) {
            _ in RoleRepositoryRealm()
        }
    }
    
    func getContainer() -> Container {
        
        return container
    }
}
