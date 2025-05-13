//
//  ViewModelPai.swift
//  ProjetoRotaKids
//
//  Created by Turma01-3 on 13/05/25.
//

import Foundation

class ViewModelPai: ObservableObject {
    
    @Published var pais: [Pai] = []
    
    func fetch(){
        guard let url = URL(string: "192.168.128.89:1880/GetPai") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Pai].self, from: data)
                DispatchQueue.main.async {
                    self?.pais = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
