//
//  PersonRepositoryRemote.swift
//  DataAccessRemote
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 7/01/21.
//

import Domain
import Alamofire

public class PersonRepositoryRemote: PersonRepository {
    
    private let urlBase = "https://dddworkshop1.free.beeceptor.com/"
    
    public init() {}
    
    public func personExists(id: String) -> Bool {
        
        var response = false
        let request = AF.request("\(urlBase)ExistsPerson")
        
        request.responseString { (serviceResponse) in
            
            guard let validatedServiceResponse = serviceResponse.value else { return }
            response = (validatedServiceResponse as NSString).boolValue
        }
        
        return response
    }
    
    public func savePerson(person: Person) {
        print("Person saved with id \(person.getId())")
        
        let personTranslator = PersonTranslator()
        let personDto = personTranslator.fromDomainToDto(person: person)
        
        let request = AF.request("\(urlBase)SavePerson", method: .post, parameters: personDto, encoder: JSONParameterEncoder.default)
        
        request.responseDecodable(of: Bool.self) { (serviceResponse) in
            guard let validatedServiceResponse = serviceResponse.value else { return }
            print(validatedServiceResponse)
            print("Person saved with id \(person.getId())")
        }
    }
}
