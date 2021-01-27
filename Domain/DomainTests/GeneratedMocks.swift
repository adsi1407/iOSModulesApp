// MARK: - Mocks generated from file: Domain/Repository/PersonRepository.swift at 2021-01-27 23:36:26 +0000

//
//  PersonRepository.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 19/11/20.
//

import Cuckoo
@testable import Domain

import Foundation


public class MockPersonRepository: PersonRepository, Cuckoo.ProtocolMock {
    
    public typealias MocksType = PersonRepository
    
    public typealias Stubbing = __StubbingProxy_PersonRepository
    public typealias Verification = __VerificationProxy_PersonRepository

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: PersonRepository?

    public func enableDefaultImplementation(_ stub: PersonRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func personExists(id: String) -> Bool {
        
    return cuckoo_manager.call("personExists(id: String) -> Bool",
            parameters: (id),
            escapingParameters: (id),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.personExists(id: id))
        
    }
    
    
    
    public func savePerson(person: Person)  {
        
    return cuckoo_manager.call("savePerson(person: Person)",
            parameters: (person),
            escapingParameters: (person),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.savePerson(person: person))
        
    }
    

	public struct __StubbingProxy_PersonRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func personExists<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.ProtocolStubFunction<(String), Bool> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: id) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonRepository.self, method: "personExists(id: String) -> Bool", parameterMatchers: matchers))
	    }
	    
	    func savePerson<M1: Cuckoo.Matchable>(person: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Person)> where M1.MatchedType == Person {
	        let matchers: [Cuckoo.ParameterMatcher<(Person)>] = [wrap(matchable: person) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockPersonRepository.self, method: "savePerson(person: Person)", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_PersonRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func personExists<M1: Cuckoo.Matchable>(id: M1) -> Cuckoo.__DoNotUse<(String), Bool> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: id) { $0 }]
	        return cuckoo_manager.verify("personExists(id: String) -> Bool", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func savePerson<M1: Cuckoo.Matchable>(person: M1) -> Cuckoo.__DoNotUse<(Person), Void> where M1.MatchedType == Person {
	        let matchers: [Cuckoo.ParameterMatcher<(Person)>] = [wrap(matchable: person) { $0 }]
	        return cuckoo_manager.verify("savePerson(person: Person)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class PersonRepositoryStub: PersonRepository {
    

    

    
    public func personExists(id: String) -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
    public func savePerson(person: Person)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


// MARK: - Mocks generated from file: Domain/Repository/RoleRepository.swift at 2021-01-27 23:36:26 +0000

//
//  RoleRepository.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 7/01/21.
//

import Cuckoo
@testable import Domain


public class MockRoleRepository: RoleRepository, Cuckoo.ProtocolMock {
    
    public typealias MocksType = RoleRepository
    
    public typealias Stubbing = __StubbingProxy_RoleRepository
    public typealias Verification = __VerificationProxy_RoleRepository

    public let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: RoleRepository?

    public func enableDefaultImplementation(_ stub: RoleRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    public func getRoles() -> [Role] {
        
    return cuckoo_manager.call("getRoles() -> [Role]",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getRoles())
        
    }
    

	public struct __StubbingProxy_RoleRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    public init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getRoles() -> Cuckoo.ProtocolStubFunction<(), [Role]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockRoleRepository.self, method: "getRoles() -> [Role]", parameterMatchers: matchers))
	    }
	    
	}

	public struct __VerificationProxy_RoleRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    public init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getRoles() -> Cuckoo.__DoNotUse<(), [Role]> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("getRoles() -> [Role]", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

public class RoleRepositoryStub: RoleRepository {
    

    

    
    public func getRoles() -> [Role]  {
        return DefaultValueRegistry.defaultValue(for: ([Role]).self)
    }
    
}

