//
//  PersonagemView.swift
//  teste
//
//  Created by Absolut on 07/05/25.
//

import SwiftUI

struct PersonagemView: View {
    
    var person: Personagem
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{

                AsyncImage(url: URL(string: person.foto!)){image in
                        image
                            .image?.resizable()
                            .scaledToFit()
                    }
                    Text("Nome:\(person.nome!)")
                        .font(.title)
                        .foregroundStyle(.white)
                    Text("Tripulação:\(person.tripulacao!)")
                        .font(.title)
                        .foregroundStyle(.white)
                    Text("Posição:\(person.posicao!)")
                        .font(.title)
                        .foregroundStyle(.white)
                    Text("Recompença: ฿ \(person.recompenca!)")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.white)

            }
        }
    }
}

#Preview {
    PersonagemView(person: Personagem(nome: "", tripulacao: "", posicao: "", recompenca: 0, foto: ""))
}
