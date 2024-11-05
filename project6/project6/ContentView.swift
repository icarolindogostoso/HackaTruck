//
//  ContentView.swift
//  project6
//
//  Created by Turma01-5 on 05/11/24.
//

import SwiftUI

struct Amigos: Decodable, Hashable{
   // let id: String
    let nome: String?
    let idade: Int?
    let foto: String?
}

class ViewModel : ObservableObject{
    @Published var chars : [Amigos] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/getIcro")!){
            data, _, error in
            do {
                self.chars = try JSONDecoder().decode([Amigos].self, from: data!)
            }catch{
                print(error)
            }
        }
        task.resume()
    }
}

struct ContentView: View {
    @StateObject var viewmodel = ViewModel()
    var body: some View {
        VStack{
            ForEach(viewmodel.chars, id: \.self){ p in
                let url = URL(string: p.foto!)
                HStack{
                    AsyncImage(url: url, content: { returnedImage in returnedImage.resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    }, placeholder: {
                        Color.gray
                    }).frame(width: 90, height: 90).cornerRadius(100)
                    HStack{
                        VStack(alignment: .leading){
                            Text(p.nome!).bold()
                                .foregroundColor(Color.black)
                            Text("\(p.idade!)")
                        }
                      //  Spacer()
                    }
                    Spacer()
                }.padding()
            }
        }.onAppear(){viewmodel.fetch()}
    }
}

#Preview {
    ContentView()
}
