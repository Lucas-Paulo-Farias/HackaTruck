//
//  ContentView.swift
//  desafio1-aula02
//
//  Created by Turma01-18 on 16/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = ""
    @State private var alerta: Bool = false
    var alert = false
    var body: some View {
        ZStack{
            Image("truck2")
                .resizable()
                .scaledToFit()
                .aspectRatio(contentMode: .fill)
                .opacity(0.4)
                .ignoresSafeArea()
            VStack {
                Text("Bem Vindo, \(nome)")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(alignment: .center)
                TextField("Digite seu nome", text: $nome)
                    .foregroundColor(.black)
                    .frame(width: 50)
                Spacer()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                Spacer()
                Button("Entrar") {
                    alerta = true
                }
                .alert(isPresented: $alerta) {
                    Alert(title: Text("ALERTA !"), message: Text("Você irá iniciar o desafio da aula agora"), dismissButton: .default(Text("Vamos lá!")))
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
