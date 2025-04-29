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
                ScrollView {
                    NavigationLink(destination: profView()) {
                        ForEach(viewModel.personagens) { index in
                            VStack{
                                    AsyncImage(url: URL(string: index.image!)){ image in
                                        image
                                            .image?.resizable()
                                            .scaledToFill()
                                            .frame(width: 80, height: 80)
                                            .cornerRadius(50)
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
