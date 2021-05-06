//
//  Usuario.swift
//  Carterinha Digital RU
//
//  Created by João Marcos on 12/12/20.
//

import UIKit


class Usuario {
    
    var nome: String
    var matricula: String
    var saldo: Double
    var isAux: Bool
    var senha: String
    var login: String
    
    var isFunc: Bool
    
    init(nome: String, matricula: String, saldo: Double, isAux: Bool, login: String, senha: String, isFunc: Bool) {
        self.nome = nome
        self.matricula = matricula
        self.saldo = saldo
        self.isAux = isAux
        self.senha = senha
        self.login = login
        
        self.isFunc = isFunc
        
    }
    
}
