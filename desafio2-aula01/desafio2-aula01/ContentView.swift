//
//  ContentView.swift
//  desafio2-aula01
//
//  Created by Turma01-18 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("image")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding()
            VStack{
                Text("Hello, world!")
                    .foregroundStyle(.red)
                Text("loren ipson")
                    .foregroundStyle(.blue)
                Text("Abra Cadabra")
                    .foregroundStyle(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
