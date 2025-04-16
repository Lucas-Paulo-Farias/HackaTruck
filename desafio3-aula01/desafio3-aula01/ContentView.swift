//
//  ContentView.swift
//  desafio3-aula01
//
//  Created by Turma01-18 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("5 posts")
                Text("200 seguidores")
                    .padding(1)
                Text("200 seguindo")
            
            }
            .padding()
            VStack{
                HStack{
                    Text("Editar Perfil")
                        .border (/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
                        .padding()
                }
            }
            HStack{
                Spacer()
                Image(systemName: "square.grid.3x3.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                Spacer()
                Image(systemName: "play.square.stack")
                    .resizable()
                    .frame(width: 30, height: 30)
                Spacer()
                Image(systemName: "person.crop.rectangle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    Spacer()
            }
            HStack{
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
            }
            .padding(-1)
            HStack{
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
            }
            .padding(-1)
            HStack{
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
                Rectangle()
                    .frame(width: 120, height: 120)
                    .foregroundColor(.gray)
                    .padding(-2)
            }
            .padding(-1)
        }
    }
}

#Preview {
    ContentView()
}
