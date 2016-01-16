//
//  ViewController.swift
//  Tarea.U3.Oscar.Gonzalez.Act14
//
//  Created by Oscar on 16-01-16.
//  Copyright © 2016 Oscar. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    // MARK: properties, relacion de los componentes del Main.
    
    @IBOutlet weak var UsuarioTxt: UITextField!
    
    @IBOutlet weak var PasswordTxt: UITextField!
    
    @IBOutlet weak var ListaTxt: UITextView!
    
    
    // define a mutable array
    var users = [Vendedor]()
    var clientes = [Cliente]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        users += [Vendedor(name: "vendedor1",password:"clave1"), Vendedor(name: "vendedor2",password:"clave2")]
        
        clientes += [Cliente(nombre: "Oscar", apellido:"Gonzalez", direccion: "Mayer 1384", ciudad: "Valparaiso"),Cliente(nombre: "Victor", apellido:"Escobar", direccion: "Sevilla 735", ciudad: "Temuco"),Cliente(nombre: "Veronica", apellido:"Soto", direccion: "Vicente 948", ciudad: "Osorno")]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Entrega al boton ingresar, de la evaluacion de los textbox vendedor y password, siendo ambas verdaderas se prensenta los datos de los clientes en el listbox
    @IBAction func Ingresar(sender: UIButton) {
   
        var userFound: Bool
        userFound = false
        
    
        
        for userNames in users {
            if userNames.getName() == UsuarioTxt.text && userNames.getPassword() == PasswordTxt.text {userFound = true}
            
        }
        
        
        if userFound == true{
            ListaTxt.text = "\("Nombre","Apellido","Direccion","Ciudad")\n\(clientes[0].getNombre(),clientes[0].getApellido(),clientes[0].getDireccion(),clientes[0].getCiudad())\n\(clientes[1].getNombre(),clientes[1].getApellido(),clientes[1].getDireccion(),clientes[1].getCiudad())\n\(clientes[2].getNombre(),clientes[2].getApellido(),clientes[2].getDireccion(),clientes[2].getCiudad())"
        }
        
        if userFound == false {
            ListaTxt.text = ""
        }
        
    }
    
    // Entrega de la accion de limpieza al boton limpiar
    
    @IBAction func Limpiar(sender: UIButton) {
   
       var userFound1: Bool
       userFound1 = false
        
        if userFound1 == false {
            UsuarioTxt.text = ""
            PasswordTxt.text = ""
            ListaTxt.text = ""
        }
    }
    
}


