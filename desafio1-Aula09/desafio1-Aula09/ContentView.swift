//
//  ContentView.swift
//  desafio1-Aula09
//
//  Created by Turma01-3 on 07/05/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
     
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black
                    .ignoresSafeArea()
                VStack{
                    Image("onep")
                        .resizable()
                        .scaledToFit()
                    ScrollView{
                        ForEach(viewModel.apiOP, id: \.self ) {teste in
                            NavigationLink(destination: PersonagemView(person: teste)) {
                                HStack{
                                    Text(teste.nomeAnime!)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundStyle(.white)
                                }
                            }
                        }
                    }
                }
            }
            .onAppear(){
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
