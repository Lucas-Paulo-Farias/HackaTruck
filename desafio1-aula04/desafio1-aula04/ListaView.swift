//
//  ListaView.swift
//  desafio1-aula04
//
//  Created by Turma01-18 on 23/04/25.
//

import SwiftUI

struct ListaView: View {    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        HStack{
                            Text("Item")
                            Spacer()
                            Image(systemName: "paintbrush")
                        }
                        HStack {
                            Text("Item")
                            Spacer()
                            Image(systemName: "paintbrush.pointed")
                        }
                        
                        HStack {
                            Text("Item")
                            Spacer()
                            Image(systemName: "paintpalette")
                        }
                    }
                    .navigationTitle("List")
                    .listStyle(.sidebar)
                    .toolbar {
                        EditButton()
                    }
                }
            }
        }
    }
}

#Preview {
    ListaView()
}

