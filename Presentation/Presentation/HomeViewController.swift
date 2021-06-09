//
//  ViewController.swift
//  Presentation
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 28/10/20.
//

import UIKit
import Domain
import DataAccessRemote

class HomeViewController: UIViewController {

    private var personService: PersonService?
    private var roleService: RoleService?
    private var roles: Array<Role>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        personService = appDelegate.diContainer.getContainer().resolve(PersonService.self)!
        roleService = appDelegate.diContainer.getContainer().resolve(RoleService.self)!
        
        roles = roleService!.getRoles()
        roles!.append(roles![1])
        
    }
    
    @IBAction func createUserButton_click(_ sender: UIButton) {
        
        do {
            let authUser: AuthUser = try AuthUser(userId: "User01", password: "abc123AB", roles: roles!)
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

