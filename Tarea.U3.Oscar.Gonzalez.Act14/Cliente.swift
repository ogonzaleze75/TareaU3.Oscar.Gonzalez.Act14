//
//  Cliente.swift
//  Tarea.U3.Oscar.Gonzalez.Act14
//
//  Created by Oscar on 16-01-16.
//  Copyright © 2016 Oscar. All rights reserved.
//

import UIKit

class Cliente {
    
    // MARK: properties
    private var nombre: String
    private var apellido: String
    private var direccion: String
    private var ciudad: String
    
    
    init (nombre:String,apellido:String,direccion:String,ciudad:String) {
        self.nombre = nombre
        self.apellido = apellido
        self.direccion = direccion
        self.ciudad = ciudad
    }
    
    func getNombre ()->String {
        return nombre
    }
    
    func getApellido ()->String {
        return apellido
    }
    func getDireccion ()->String {
        return direccion
    }
    
    func getCiudad ()->String {
        return ciudad
    }
    
    
}