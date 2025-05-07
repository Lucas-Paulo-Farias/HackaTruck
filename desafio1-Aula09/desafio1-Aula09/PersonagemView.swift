//
//  PersonagemView.swift
//  desafio1-Aula09
//
//  Created by Turma01-3 on 07/05/25.
//

import SwiftUI

struct PersonagemView: View {
    
    var person: OP
    
    var body: some View {
        Text(person.personagens.nome!)
    }
}

#Preview {
    PersonagemView(person: OP(nomeAnime: "", anoLancamento: 0, personagens: Personagem(nome: "", tripulacao: "", posicao: "", recompenca: 0, foto: "")))
}
