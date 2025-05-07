//
//  Model.swift
//  desafio1-Aula09
//
//  Created by Turma01-3 on 07/05/25.
//

import Foundation

struct OP: Decodable, Hashable {
    let nomeAnime: String?
    let anoLancamento: Int?
    let personagens: Personagem
}

struct Personagem: Decodable, Hashable {
    let nome: String?
    let tripulacao: String?
    let posicao: String?
    let recompenca: Int?
    let foto: String?
}
