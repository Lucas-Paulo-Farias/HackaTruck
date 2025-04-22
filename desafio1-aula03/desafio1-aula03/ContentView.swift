//
//  ContentView.swift
//  desafio1-aula03
//
//  Created by Turma01-18 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var num1: Double = 0
    @State private var num2: Double = 0
    @State private var resultado: Double = 0
    @State private var imagem: String = ""
    @State private var corfundo: Color = .gray

    var body: some View {
        VStack {
            Text("Digite a distancia (km)")
            ZStack{
                Rectangle()
                    .frame(width: 150, height: 25)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                TextField("Digete o valor", value: $num1, formatter: NumberFormatter())
                    .multilineTextAlignment(.center)
            }
            Text("Digite o tempo (h)")
            ZStack{
                Rectangle()
                    .frame(width: 150, height: 25)
                    .foregroundColor(.white)
                    .cornerRadius(50)
                TextField("Digete o valor", value: $num2, formatter: NumberFormatter())
                    .multilineTextAlignment(.center)
            }
            Button(action: {
                resultado = num1 / num2
                    
                
                if resultado > 0 && resultado < 10 {
                    imagem = "tartaruga"
                    corfundo = .verdeClaro
                }else if resultado >= 10 && resultado < 30 {
                    imagem = "elefante"
                    corfundo = .azulClaro
                } else if resultado >= 30 && resultado < 70 {
                    imagem = "Avestruz"
                    corfundo = .laranjaClaro
                }else if resultado >= 70 && resultado < 90 {
                    imagem = "leao"
                    corfundo = .amareloClaro
                }else if resultado >= 90 && resultado <= 130 {
                    imagem = "guepardo"
                    corfundo = .vermelhoClaro
                }else if resultado <= 0 || resultado > 130 {
                    imagem = "interrogacao"
                    corfundo = .gray
                }
            }){
                Text("Calcular")
            }
            Spacer()
            Text("\(resultado, specifier: "%.2f") KM/H")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        
            Image("\(imagem)")
                .resizable()
                .clipShape(.circle)
            ZStack{
                Rectangle()
                    .cornerRadius(20)
                VStack{
                    HStack{
                        Text("TARTARUGA (0 - 9.9 km/h)")
                            .foregroundColor(.white)
                        Circle()
                            .foregroundColor(.verdeClaro)
                            .frame(width: 20)
                    }
                    HStack{
                        Text("ELEFANTE (10 - 29.9 km/h)")
                            .foregroundColor(.white)
                        Circle()
                            .foregroundColor(.azulClaro)
                            .frame(width: 20)
                    }
                    HStack{
                        Text("AVESTRUZ (30 - 69.9 km/h)")
                            .foregroundColor(.white)
                        Circle()
                            .foregroundColor(.laranjaClaro)
                            .frame(width: 20)
                    }
                    HStack{
                        Text("LEAO (70 - 89.9 km/h)")
                            .foregroundColor(.white)
                        Circle()
                            .foregroundColor(.amareloClaro)
                            .frame(width: 20)
                    }
                    HStack{
                        Text("GUEPARDO (90 - 130 km/h)")
                            .foregroundColor(.white)
                        Circle()
                            .foregroundColor(.vermelhoClaro)
                            .frame(width: 20)
                    }
                }
            }
        }
        .padding()
        .background(corfundo)
    }
}

#Preview {
    ContentView()
    
}
