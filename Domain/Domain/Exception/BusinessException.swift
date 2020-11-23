//
//  BusinessException.swift
//  Domain
//
//  Created by Andrés David Santacoloma Isaza - Ceiba Software on 23/11/20.
//

import Foundation

public enum BusinessError: Error {
    
    case EmptyRoles(message: String = "Debe tener al menos un rol.")
    case PersonAlreadyExists(message: String = "La persona ya existe.")
    case WrongEmail(message: String = "El email tiene un formato incorrecto.")
    case WrongPassword(message: String = "El password no tiene el formato correcto.")
}
