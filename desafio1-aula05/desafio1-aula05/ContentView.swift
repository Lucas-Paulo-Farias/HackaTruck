//
//  ContentView.swift
//  desafio1-aula05
//
//  Created by Turma01-18 on 24/04/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView{
            InicioView() 
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
            NovisView()
                .tabItem {
                    Label("Novidades", systemImage: "play.rectangle.on.rectangle")
                }
            MinhaContaView()
                .tabItem {
                    Label("Minha Conta", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}
