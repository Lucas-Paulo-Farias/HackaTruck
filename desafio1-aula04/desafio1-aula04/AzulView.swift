//
//  AzulView.swift
//  desafio1-aula04
//
//  Created by Turma01-18 on 23/04/25.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color(.blue)                .edgesIgnoringSafeArea(.top)
            Rectangle()
                .frame(width: 300, height: 300)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.black)
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .foregroundStyle(.blue)
        }
    }
}

#Preview {
    AzulView()
}
