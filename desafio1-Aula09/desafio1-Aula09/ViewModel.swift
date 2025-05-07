//
//  ViewModel.swift
//  desafio1-Aula09
//
//  Created by Turma01-3 on 07/05/25.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var apiOP: [OP] = []

func fetch(){
    guard let url = URL(string: "http://127.0.0.1:1880/LerAnime"/*usar ip da rede 192.168.....:1880*/) else { 
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
        
        guard let data = data, error == nil else {
            return
        }
        
        do {
            let parsed = try JSONDecoder().decode([OP].self, from: data)
            DispatchQueue.main.async {
                self?.apiOP = parsed
            }
        } catch {
            print(error)
        }
    }
    task.resume()
}
}
