import SwiftUI

struct ProfessorDetailView: View {
    var professor: HaPo
    
    var body: some View {
        ScrollView {
            VStack {
                // Exibe a imagem do professor
                AsyncImage(url: URL(string: professor.image ?? "")) { image in
                    image
                        .image?.resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Borda branca
                        .shadow(radius: 10) // Sombra
                }
                
                Text(professor.name!)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                if let house = professor.house {
                    Text("Casa: \(house)")
                        .font(.body)
                        .padding(.bottom, 2)
                }
                
                if let actor = professor.actor {
                    Text("Ator: \(actor)")
                        .font(.body)
                        .padding(.bottom, 2)
                }
                
                if let gender = professor.gender {
                    Text("Gênero: \(gender)")
                        .font(.body)
                        .padding(.bottom, 2)
                }
                
                if let patronus = professor.patronus {
                    Text("Patrono: \(patronus)")
                        .font(.body)
                        .padding(.bottom, 2)
                }
                
                // Exemplo de como exibir mais detalhes
                if let ancestry = professor.ancestry {
                    Text("Ascendência: \(ancestry)")
                        .font(.body)
                        .padding(.bottom, 2)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle(professor.name ?? "Detalhes do Professor")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

