//
//  CuckooPerson.swift
//  DomainTests
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 27/01/21.
//
import Cuckoo
@testable import Domain



extension Person: Matchable {
    public var matcher: ParameterMatcher<Person> {
        return ParameterMatcher { $0 === self }
    }
}
