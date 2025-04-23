//
//  ContentView.swift
//  desafio1-aula04
//
//  Created by Turma01-18 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RosaView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            AzulView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed.fill")
                }
            CinzaView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette.fill")
                }
            ListaView()
                .tabItem {
                    Label("lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
