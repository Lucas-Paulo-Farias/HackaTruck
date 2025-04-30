//
//  ContentView.swift
//  desaio1-aula07
//
//  Created by Turma01-18 on 28/04/25.
//

import SwiftUI
import MapKit

public struct Location: Hashable{
    var nome: String
    var foto: String
    var descricao: String
    var latitude: Double
    var longitude: Double
}

var mapa: [Location] = [
    Location(nome: "Belo Horizonte", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Bandeira-de-Belo-Horizonte.svg/500px-Bandeira-de-Belo-Horizonte.svg.png", descricao: "Belo Horizonte é um municipío brasileiro e a capatal do estado de Minas Gerais.", latitude: -19.924557, longitude: -43.991597),
    Location(nome: "Cristo Redentor", foto: "https://lh3.googleusercontent.com/gps-cs-s/AB5caB_2UJ4gzb6xkel4mWw43rzkGkvHHyHxJ7kToldeMzn1udq58_oG5LJ7OkOL9QVpTMSfQlNeQPFbQbd6eH6uKVPDtRXKuAFslUlF-uEVZ2rfU4kQH0_q27SV_OzG67FBSNQpbbNLlw=s1360-w1360-h1020-rw", descricao: "Estatua do Cristo Redentor no Rio de Janeiro", latitude: -22.956, longitude: -43.201),
]


struct SheetView: View {
    var location: Location
    
    var body: some View {
        VStack{
            ZStack{
                Rectangle()
                    .foregroundStyle(.amareloPastel)
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    AsyncImage(url: URL(string: location.foto)) { image in
                        image
                            .image?.resizable()
                            .frame(width: 250, height: 200, alignment: .center)
                    }
                    
                    Text(location.nome)
                        .font(.title)
                        .multilineTextAlignment(.center)
                    
                    ZStack{
                        Rectangle()
                            .foregroundStyle(Color.brown)
                            .frame(width: 300, height: 500, alignment: .center)
                        Text(location.descricao)
                            .foregroundStyle(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 250, minHeight: 0, maxHeight: 450)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    
    @State var aux: [Location] = [
        Location(nome: "", foto: "", descricao: "", latitude: 0, longitude: 0)

    ]
    @State private var mostrarView: Bool = false
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    
    var body: some View {
        VStack{
            Map(){
                ForEach(mapa, id: \.self) { index in
                    Annotation(index.nome, coordinate: CLLocationCoordinate2D(latitude: index.latitude, longitude: index.longitude)){
                        Button{
                            mostrarView = true
                            aux = Location
                        }label: {
                            Image(systemName: "mappin")
                                .font(.title)
                                .padding()
                                .background(.black)
                                .foregroundStyle(Color.yellow)
                                .clipShape(.capsule)
                        }

                    }
                }
            }
            .sheet(isPresented: $mostrarView) {
                    SheetView(location: aux)
                }
        }
        }
    }

#Preview {
    ContentView()
}
