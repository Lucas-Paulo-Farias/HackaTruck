//
//  ContentView.swift
//  anime
//
//  Created by Absolut on 07/05/25.
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
                        ForEach(viewModel.apiOP, id: \.self ) {anime in
                            VStack{
                                Text(anime.nomeAnime!)
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                Text("Lançado em: \(String(anime.anoLancamento!))")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                Text("Lista personagens:")
                                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.white)
                                    .padding()
                                ForEach(anime.personagens, id: \.self) { pessoas in
                                    NavigationLink(destination: PersonagemView(person: pessoas)) {
                                        HStack{
                                            AsyncImage(url: URL(string: pessoas.foto!)) {image in
                                                image
                                                    .image?.resizable()
                                                    .scaledToFill()
                                                    .frame(width: 100, height: 100)
                                                    .cornerRadius(50)
                                            }
                                            Text(pessoas.nome!)
                                                .font(.title)
                                                .foregroundStyle(.white)
                                            Spacer()
                                        }
                                    }
                                }}
                            
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
