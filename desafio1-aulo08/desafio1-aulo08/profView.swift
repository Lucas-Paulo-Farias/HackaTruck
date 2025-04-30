//
//  profView.swift
//  desafio1-aulo08
//
//  Created by Turma01-3 on 29/04/25.
//

import SwiftUI

struct profView: View {
    
    var professor: HaPo
    
    var body: some View {
        ZStack{
            Color.brown
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: professor.image!)) { image in
                        image
                            .image?.resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                    }
                    Spacer()
                    Spacer()
                    Text(professor.name!)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("Casa: \(professor.house!)")
                    
                    Text("Ator: \(professor.actor!)")
                    
                    Text("Gênero: \(professor.gender!)")
                    
                    Text("Patrono: \(professor.patronus!)")
                    
                    Text("Ascendência: \(professor.ancestry!)")
                    

                    
                }
            }
            .navigationTitle(professor.name!)
        }
    }
}

#Preview {
    profView(professor: HaPo(id: "", name: "", alternate_names: [""], species: "", gender: "", house: "", dateOfBirth: "", yearOfBirth: 0, wizard: false, ancestry: "", eyeColour: "", hairColour: "", wand: Wand(wood: "", core: "", length: 0), patronus: "", hogwartsStudent: false, hogwartsStaff: false, actor: "", alternate_actors: [""], alive: false, image: ""))
}
