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
                VStack {
                    Image("hogwarts")
                        .resizable()
                ScrollView {
                        ForEach(viewModel.personagens) { index in
                            NavigationLink(destination: profView(professor: index)) {
                                HStack{
                                    AsyncImage(url: URL(string: index.image!)){ image in
                                        image
                                            .image?.resizable()
                                            .scaledToFill()
                                            .frame(width: 100, height: 100)
                                            .cornerRadius(50)
                                    }
                                    
                                    Text(index.name!)
                                        .font(.title2)
                                        .foregroundStyle(.white)
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
