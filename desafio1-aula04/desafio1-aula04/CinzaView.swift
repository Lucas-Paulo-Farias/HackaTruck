//
//  CinzaView.swift
//  desafio1-aula04
//
//  Created by Turma01-18 on 23/04/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            Color(.gray)
                .edgesIgnoringSafeArea(.top)
            Rectangle()
                .frame(width: 300, height: 300)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.black)
            Image(systemName: "paintpalette")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    CinzaView()
}
