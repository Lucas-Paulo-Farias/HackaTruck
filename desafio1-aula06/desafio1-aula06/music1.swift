//
//  music1.swift
//  desafio1-aula06
//
//  Created by Turma01-18 on 25/04/25.
//

import SwiftUI

struct music1: View {
    var recebe: Song
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recebe.capa)) { image in
                image
                    .image?.resizable()
                    .frame(width: 200, height: 200)
            }
            Text(recebe.nome)
                .font(.title)
                .foregroundStyle(Color.white)
            Text(recebe.artist)
                .font(.subheadline)
                .foregroundStyle(Color.white)
            Spacer()
        }
        .padding()
        .background(Color.black)
        .ignoresSafeArea()
    }
}

#Preview {
    music1(recebe: Song(id: 1, nome: "teste", artist: "teste", capa: "teste"))
}
