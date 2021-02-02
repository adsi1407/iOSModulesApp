//
//  PersonDto.swift
//  DataAccessRemote
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 7/01/21.
//
import Alamofire

public struct PersonDto: Codable {
    
    public var id: String?
    public var name: String?
    public var userId: String?
    public var password: String?
    public var roles: Array<String>?
    
    public init() {}
    
}
