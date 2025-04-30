import SwiftUI
import MapKit

public struct Location: Hashable {
    var nome: String
    var foto: String
    var descricao: String
    var latitude: Double
    var longitude: Double
}

var mapa: [Location] = [
    Location(nome: "Belo Horizonte", foto: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Bandeira-de-Belo-Horizonte.svg/500px-Bandeira-de-Belo-Horizonte.svg.png", descricao: "Belo Horizonte é um município brasileiro e a capital do estado de Minas Gerais.", latitude: -19.924557, longitude: -43.991597),
    Location(nome: "Cristo Redentor", foto: "https://lh3.googleusercontent.com/gps-cs-s/AB5caB_2UJ4gzb6xkel4mWw43rzkGkvHHyHxJ7kToldeMzn1udq58_oG5LJ7OkOL9QVpTMSfQlNeQPFbQbd6eH6uKVPDtRXKuAFslUlF-uEVZ2rfU4kQH0_q27SV_OzG67FBSNQpbbNLlw=s1360-w1360-h1020-rw", descricao: "Estátua do Cristo Redentor no Rio de Janeiro", latitude: -22.956, longitude: -43.201),
]

struct SheetView: View {
    var location: Location

    var body: some View {
        VStack {
            AsyncImage(url: URL(string: location.foto)) { image in
                image
                    .image?.resizable()
                    .frame(width: 250, height: 200)
            }

            Text(location.nome)
                .font(.title)
                .multilineTextAlignment(.center)
            
            ZStack {
                Rectangle()
                    .foregroundColor(.brown)
                    .frame(width: 300, height: 500)
                Text(location.descricao)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 250, maxHeight: 450)
            }
        }
    }
}

struct ContentView: View {
    
    @State private var selectedLocation: Location? = nil
    @State private var cameraPosition = MapCameraPosition.region(
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
                           span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    )
    
    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(mapa, id: \.self) { location in
                Annotation(location.nome, coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                    Button {
                        selectedLocation = location
                    } label: {
                        Image(systemName: "mappin")
                            .padding()
                            .background(Color.black)
                            .foregroundColor(.yellow)
                            .clipShape(Circle())
                    }
                }
            }
        }
        .sheet(isPresented: Binding(
            get: { selectedLocation != nil },
            set: { if !$0 { selectedLocation = nil } }
        )) {
            if let location = selectedLocation {
                SheetView(location: location)
            }
        }
    }
}

#Preview {
    ContentView()
}
