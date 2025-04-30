//
//  ContentView.swift
//  desafio1-aulo08
//
//  Created by Turma01-3 on 29/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color.brown
                    .ignoresSafeArea()
                VStack{
                    Image("hogwarts")
                ScrollView {
                        ForEach(viewModel.personagens) { index in
                            NavigationLink(destination: ProfessorDetailView(professor: index)) {
                                HStack {
                                    AsyncImage(url: URL(string: index.image!)){ image in
                                        image
                                            .image?.resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        }
                                    Text(index.name!)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                        .padding()
                                    Spacer()
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
