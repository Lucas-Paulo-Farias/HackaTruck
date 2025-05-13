//
//  Model.swift
//  ProjetoRotaKids
//
//  Created by Turma01-3 on 13/05/25.
//

import Foundation

struct Motorista: Decodable, Hashable {
    let nome: String?
    let cnh: String?
    let foto: String?
    let telefone: String?
    let veiculos: [Veiculo]
}

struct Veiculo: Decodable, Hashable {
    let placa: String?
    let modelo: String?
    let cor: String?
    let crianca: [Veiculo]
}

struct Pai: Decodable, Hashable {
    let nome: String?
    let endereco: String?
    let foto: String?
    let telefone: String?
    let criancas: [Crianca]
}

struct Crianca: Decodable, Hashable {
    let apelido: String?
    let foto: String?
    let colegio: String?
    let horario: String?
    let observacoes: String?
}
