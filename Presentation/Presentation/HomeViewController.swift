//
//  ViewController.swift
//  Presentation
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 28/10/20.
//

import UIKit
import Domain
import DataAccess

class HomeViewController: UIViewController {

    private var personService: PersonService?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        personService = appDelegate.container.resolve(PersonService.self)!
        
        var roles: Array<Role> = Array<Role>()
        let role: Role = Role(name: "Role01")
        role.setDescription(description: "RoleDescription01")
        roles.append(role)
        
        let authUser: AuthUser = AuthUser(userId: "User01", password: "123", roles: roles)
        let person: Person = Person(id: "Person01", name: "Summy Person", authUser: authUser)
        personService!.savePerson(person: person)
    }

}

