//
//  AssistirView.swift
//  desafio1-aula05
//
//  Created by Turma01-18 on 24/04/25.
//

import SwiftUI

struct AssistirView: View {
    @State var serie: String
    
    var body: some View {
        ZStack{
            Color(.black)
                .edgesIgnoringSafeArea(.top)
            VStack{
                Image("b99")
                    .resizable()
                    .scaledToFit()
                Text("\(serie)")
                    .foregroundColor(.white)
                HStack{
                    Text("2021")
                        .foregroundColor(.white)
                    Image(systemName: "14.square.fill")
                        .foregroundColor(.orange)
                    Text("8 Temporadas")
                        .foregroundColor(.white)
                    Spacer()
                        .padding()
                }
                ZStack{
                    Rectangle()
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 400, maxHeight: 40)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                    HStack{
                        Image(systemName: "play.fill")
                        Text("ASSISTIR")
                    }
                }
                ZStack{
                    Rectangle()
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 400, maxHeight: 40)
                        .foregroundColor(.gray)
                        .cornerRadius(5)
                    HStack{
                        Image(systemName: "arrow.down.to.line.alt")
                        Text("BAIXAR")
                    }
                }
                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                    .foregroundColor(.white)
                    .padding()
                HStack{
                    VStack{
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        Text("Minha lista")
                            .foregroundColor(.white)
                    }
                    VStack{
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                        Text("Avaliar")
                            .foregroundColor(.white)
                    }
                    VStack{
                        Image(systemName: "paperplane.fill")
                            .foregroundColor(.white)
                        Text("Compartilhar")
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                
                HStack{
                    Text("Episódios")
                        .foregroundColor(.white)
                        .padding()
                    Text("Titulos Semelhantes")
                        .foregroundColor(.gray)
                Spacer()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    AssistirView(serie: "")
}
