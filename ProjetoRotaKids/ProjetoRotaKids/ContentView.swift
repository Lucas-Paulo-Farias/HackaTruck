//
//  ContentView.swift
//  ProjetoRotaKids
//
//  Created by Turma01-3 on 13/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.amarelo
                    .ignoresSafeArea()
                VStack{
                    Image("rotakidspng")
                        .resizable()
                        .scaledToFit()
                    ZStack{
                        Rectangle()
                            .foregroundColor(.azul)
                            .frame(width: 250, height: 100)
                        Text("MOROTISTA")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .foregroundColor(.laranja)
                    }
                        NavigationLink (destination: PaiView()) {
                            ZStack{
                            Rectangle()
                                .foregroundColor(.azul)
                                .frame(width: 250, height: 100)
                            Text("PAI")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .bold()
                                .foregroundColor(.laranja)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
