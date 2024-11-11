//
//  ContentView.swift
//  project7
//
//  Created by Turma01-5 on 06/11/24.
//

import SwiftUI

struct Usuario: Decodable, Hashable{
    let nomeUsu: String?
    let fotoPerfil: String?
    let amigos: [Amigo]
}

struct Amigo: Decodable, Hashable{
    let nome: String?
    let foto: String?
}

struct ContentView: View {
    
    @State var usu = [Usuario(nomeUsu: "Icaro", fotoPerfil: "https://uploads.metroimg.com/wp-content/uploads/2023/12/05134510/Nicolas-Cage-1.jpg", amigos: [Amigo(nome: "Asaph", foto: "https://uploads.metroimg.com/wp-content/uploads/2023/12/05134510/Nicolas-Cage-1.jpg")])]
    
    @State private var searchText = ""
    
    var body: some View {
        ZStack{
            Color(.corFundo).ignoresSafeArea()
            VStack{
                HStack{
                    ForEach(usu, id: \.self){ p in
                        let url = URL(string: p.fotoPerfil!)
                        HStack{
                            AsyncImage(url: url, content: { returnedImage in returnedImage.resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            }, placeholder: {
                                Color.gray
                            }).frame(width: 70, height: 70).cornerRadius(100)
                        }
                        Text(p.nomeUsu!)
                        Spacer()
                        Image(.component1)
                    }
                }.padding()
                NavigationView{
                    ZStack{
                        Color(.corFundo).ignoresSafeArea()
                    }
                }
                .navigationTitle("Amigos")
                .searchable(text: $searchText)
            }
        }
    }
}

#Preview {
    ContentView()
}
