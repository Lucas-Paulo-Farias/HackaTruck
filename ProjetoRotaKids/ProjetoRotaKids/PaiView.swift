//
//  PaiView.swift
//  ProjetoRotaKids
//
//  Created by Turma01-3 on 13/05/25.
//

import SwiftUI

struct PaiView: View {
    var body: some View {
        ZStack {
            Color.amarelo
                .ignoresSafeArea()
            VStack{
                HStack {
                    AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBwr_zZjgvmu4BccwDNIHic8K5dyehw7cSYA&s")) {image in
                        image.image?.resizable()
                            .frame(width: 100, height: 100)
                            .cornerRadius(50)
                    }
                    Text("Nome do Pai")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
    }
}

#Preview {
    PaiView()
}
