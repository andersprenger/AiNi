//
//  User.swift
//  AiNi
//
//  Created by Giovani Nícolas Bettoni on 19/05/21.
//

import Foundation

struct User: Codable {
    var name: String
    var profissao: String?
    var especializacao: String?
    var data_nascimento: String?
    var celular: String
    var email: String
    var password: String
    var type: String
    
}
