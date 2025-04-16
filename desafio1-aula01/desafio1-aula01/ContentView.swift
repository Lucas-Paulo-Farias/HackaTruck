//
//  ContentView.swift
//  desafio1-aula01
//
//  Created by Turma01-18 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Text("")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .top)
                    .background(Color.red)
                Spacer()
                Text("")
                    .frame(width: 100, height: 100, alignment: .top)
                    .background(Color.blue)
            }
            Spacer()
            HStack{
                Text("")
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100, alignment: .top)
                    .background(Color.green)
                Spacer()
                Text("")
                    .frame(width: 100, height: 100, alignment: .top)
                    .background(Color.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
