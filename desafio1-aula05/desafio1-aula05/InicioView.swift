//
//  InicioView.swift
//  desafio1-aula05
//
//  Created by Turma01-18 on 24/04/25.
//

import SwiftUI

struct InicioView: View {
    @State private var serie: String = "b99"
    var body: some View {
        NavigationStack() {
            ZStack{
                Color(.black)
                    .edgesIgnoringSafeArea(.top)
                VStack {
                    HStack {
                        Text("Para Lucas")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Image(systemName: "arrow.down.to.line.compact")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    HStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 80, height: 30)
                                .cornerRadius(30)
                            Text("Séries")
                        }
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 80, height: 30)
                                .cornerRadius(30)
                            Text("Filmes")
                        }
                        ZStack {
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 130, height: 30)
                                .cornerRadius(30)
                            HStack {
                                Text("Categorias")
                                Image(systemName: "chevron.down")
                            }
                        }
                    }
                    ZStack {
                        Image("ninenine")
                            .resizable()
                            .frame(width: 350, height: 500)
                        NavigationLink(destination: AssistirView(serie: serie)){
                            Image(systemName: "play.fill")
                                .foregroundColor(.black)
                                .frame(width: 25)
                            Text("ASSISTIR")
                                .foregroundColor(.black)
                                .frame(width: 100, height: 50)
                        }
                        
                        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color .white)
                        .cornerRadius(7)
                        .padding()
                    }
                    Text("Continuar assistindo como Lucas")
                        .foregroundColor(.white)
                        .font(.title2)
                    Spacer()
                }
            }
        }}
}

#Preview {
    InicioView()
}
