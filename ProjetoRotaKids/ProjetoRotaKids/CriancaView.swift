import SwiftUI

struct CriancaView: View {
    @StateObject var criancaview = ViewModelPai()
    var body: some View {
        ZStack{
            Color.amarelo
                .ignoresSafeArea()
            ForEach(criancaview.pais, id: \.self){ index in
                ForEach(index.criancas, id: \.self){ kid in
                    VStack{
                        AsyncImage(url: URL(string: kid.foto!)){ image in
                            image
                                .image?.resizable()
                                .frame(width:300, height: 300)
                        }
                        Text("Nome: \(kid.apelido!)")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Text("Colégio: \(kid.colegio!)")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Text("Horário: \(kid.horario!)")
                            .font(.title)
                            .multilineTextAlignment(.center)
                        Text("Observações:\n\(kid.observacoes!)")
                            .font(.title)
                            .multilineTextAlignment(.center)
                    }
                }
            }
        }
        .onAppear(){
            criancaview.fetch()
        }
    }
}

#Preview {
    CriancaView()
}
