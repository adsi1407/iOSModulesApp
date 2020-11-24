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
        
        do {
            let authUser: AuthUser = try AuthUser(userId: "User01", password: "123", roles: roles)
            let person = try Person(id: "Person01", name: "Summy Person", authUser: authUser)
            try personService!.savePerson(person: person)
            print("Se ha guardado correctamente")
        } catch BusinessError.EmptyRoles(let errorMessage) {
            print(errorMessage)
        } catch BusinessError.WrongPassword(let errorMessage) {
            print(errorMessage)
        } catch BusinessError.PersonAlreadyExists(let errorMessage) {
            print(errorMessage)
        } catch {
            print("Sucedió un error")
        }
    }

}

