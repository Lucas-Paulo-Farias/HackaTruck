//
//  ViewModelMotorista.swift
//  ProjetoRotaKids
//
//  Created by Turma01-3 on 13/05/25.
//

import Foundation

class ViewModelMotorista: ObservableObject {
    
    @Published var motoristas: [Motorista] = []
    
    func fetch(){
        guard let url = URL(string: "192.168.128.89:1880/GetMotorista") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Motorista].self, from: data)
                DispatchQueue.main.async {
                    self?.motoristas = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
