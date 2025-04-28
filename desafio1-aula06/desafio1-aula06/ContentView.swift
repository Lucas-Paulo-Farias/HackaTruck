//
//  ContentView.swift
//  desafio1-aula06
//
//  Created by Turma01-18 on 25/04/25.
//

import SwiftUI

public struct Song: Identifiable {
    public var id: Int
    var nome: String
    var artist: String
    var capa: String
}

struct ContentView: View {
    
    
    var songs: [Song] = [
    Song(id: 1, nome: "Here Without You", artist: "3 Doors Down", capa: "https://lastfm.freetls.fastly.net/i/u/500x500/1bdb46d01f3f425cc210095b0ff0278c.jpg"),
    Song(id: 2, nome: "Numb", artist: "Linking Park", capa: "https://i.scdn.co/image/ab67616d0000b2735f1f51d14e8bea89484ecd1b"),
    Song(id: 3, nome: "I Don't Care", artist: "Apocalyptica, Adam Gontier", capa: "https://i.scdn.co/image/ab67616d00001e02754bfe5e22c2af35d6fdb0a5"),
    Song(id: 4, nome: "Like a Stone", artist: "Audioslave", capa: "https://upload.wikimedia.org/wikipedia/pt/3/33/Audioslave_-_Audioslave_%28%C3%A1lbum%29.jpg"),
    Song(id: 5, nome: "Stricken", artist: "Disturbed", capa: "https://i1.sndcdn.com/artworks-000133960617-8yd8lp-t500x500.jpg"),
    Song(id: 6, nome: "Kryptonite", artist: "3 Doors Down", capa: "https://i.scdn.co/image/ab67616d00001e022868c4713a3912fd476b42f1"),
    Song(id: 7, nome: "If Today Was Your Last Day", artist: "Nickelback", capa: "https://cdn-images.dzcdn.net/images/cover/bc844f574c47ba2f0db583115916472f/500x500.jpg"),
    Song(id: 8, nome: "Comatose", artist: "Skrillet", capa: "https://lastfm.freetls.fastly.net/i/u/500x500/7249664c3aa40ced039a6384a744d6a2.jpg"),
    Song(id: 9, nome: "Zombie", artist: "Bad Wolves", capa: "https://i.scdn.co/image/ab67616d0000b2730fa217105897ecfc5242b600"),
    Song(id: 10, nome: "The Diary Of Jane", artist: "Breaking Benjamin", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPfH-JzwbKlv9SLbFYdKqOjZcdph-ZN9nbGGpyLo7IJJlnp6p-9OEa5GQPF_zY56-KjS4&usqp=CAU"),
    Song(id: 11, nome: "When I'm Gone", artist: "3 Doors Down", capa: "https://i.discogs.com/_pR1m2Qqoypd4Y1fuoI6YMRjnaJww0lTp2RrdQZjk3s/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyMjA4/NDItMTI3MDc0OTU0/MC5qcGVn.jpeg"),
    ]
    
    var music: [Song] = [
        Song(id: 1, nome: "1 - one", artist: "", capa: "https://marketplace.canva.com/EAGVFAsBBVA/1/0/1600w/canva-capa-para-playlist-de-m%C3%BAsicas-animadas-colorido-4NK4l_yOlyg.jpg"),
        Song(id: 2, nome: "2 - two", artist: "", capa: "https://s2.glbimg.com/fCZRC09UNj65CYfCzgy0fYTX54c=/e.glbimg.com/og/ed/f/original/2015/10/16/capaplaylist_1.jpg"),
        Song(id: 3, nome: "3 - three", artist: "", capa: "https://brasazul.com.br/wp-content/uploads/2020/11/Capa-Playlist-Acu%CC%81sticas-BR-1-512x512.jpg"),
        Song(id: 4, nome: "4 - four", artist: "", capa: "https://cdn.myportfolio.com/c5191cc5-8b7d-4a50-bf8a-3036528f230d/fc1634a8-71a6-4d18-9a49-a23095d64fea_rw_1920.jpg?h=7f8423c4bee0549ba45cc5c8dc8d20de"),
        Song(id: 5, nome: "5 - five", artist: "", capa: "https://pm1.aminoapps.com/7590/eaa68e9261c125bc553be41e2d4e684703b1cba5r1-1080-1080v2_hq.jpg")
    ]
    
    var body: some View {
        NavigationStack {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
                ScrollView(.vertical){
                    VStack {
                        AsyncImage(url: URL(string: "https://musicainstantanea.com.br/wp-content/uploads/2020/12/Capas.jpg")) {image in
                            image
                                .image?.resizable()
                                .frame(width: 200, height: 200)
                        }
                        HStack{
                            Text("HackaFM")
                                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                .foregroundStyle(Color.white)
                            Spacer()
                        }
                        HStack{
                            AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/universal-warriors/images/2/23/Denji.png/revision/latest/thumbnail/width/360/height/360?cb=20220824142312")){image in
                                image
                                    .image?.resizable()
                                .frame(width: 25, height: 25)}
                            Text("HackaSong")
                                .foregroundStyle(Color.white)
                            Spacer()
                            }
                        ForEach(songs) { Song in
                            NavigationLink(destination: music1(recebe: Song)) {
                                HStack{
                                    AsyncImage(url: URL(string: Song.capa)) { image in
                                        image
                                            .image?.resizable()
                                            .frame(width: 60, height: 60)
                                    }
                                    VStack {
                                        Text(Song.nome)
                                            .foregroundStyle(Color.white)
                                            .multilineTextAlignment(.center)
                                        Text(Song.artist)
                                            .foregroundStyle(Color.white)
                                            .multilineTextAlignment(.center)
                                    }
                                    Spacer()
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.white)
                                }
                            }
                        }
                        ScrollView(.horizontal){
                            HStack{
                                ForEach(music) { song1 in
                                    VStack {
                                        AsyncImage(url: URL(string: song1.capa)) {image in
                                            image
                                                .image?.resizable()
                                                .frame(width: 100, height: 100)
                                        }
                                        Text(song1.nome)
                                            .foregroundStyle(Color.white)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    #Preview {
        ContentView()
    }
