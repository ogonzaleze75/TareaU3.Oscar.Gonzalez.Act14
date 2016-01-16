//
//  Vendedor.swift
//  Tarea.U3.Oscar.Gonzalez.Act14
//
//  Created by Oscar on 16-01-16.
//  Copyright © 2016 Oscar. All rights reserved.
//

import UIKit

class Vendedor {
    
    // MARK: properties
    private var name: String
    private var password: String
    
    
    init (name: String, password:String) {
        self.name = name
        self.password = password
    }
    
    func getName ()->String {
        return name
        
    }
    
    func getPassword ()->String {
        return password
    }
}