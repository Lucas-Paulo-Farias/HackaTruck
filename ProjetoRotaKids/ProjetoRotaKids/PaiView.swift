//
//  PaiView.swift
//  ProjetoRotaKids
//
//  Created by Turma01-3 on 13/05/25.
//

import SwiftUI

struct PaiView: View {
@StateObject var viewmodelpai = ViewModelPai()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.amarelo
                    .ignoresSafeArea()
                ForEach(viewmodelpai.pais, id: \.self){ index in
                    VStack{
                        Spacer()
                        Spacer()
                        HStack {
                            AsyncImage(url: URL(string: index.foto!)) {image in
                                image.image?.resizable()
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(50)
                            }
                            Text(index.nome!)
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            Spacer()
                            Image(systemName: "line.3.horizontal")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        }
                        Text("Crianças cadastradas")
                            .padding()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        Spacer()
                        ForEach(index.criancas, id: \.self){ kids in
                            NavigationLink(destination: CriancaView()){
                                HStack{
                                    AsyncImage(url: URL(string: kids.foto!)) {image in
                                        image.image?.resizable()
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(50)
                                    }
                                    Text(kids.apelido!)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.black)
                                }
                                Spacer()
                            }
                            Spacer(minLength: 350)
                        }
                    }
                }
            }
            .onAppear(){
                viewmodelpai.fetch()
            }
        }
    }
}

#Preview {
    PaiView()
}
