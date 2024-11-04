//
//  ContentView.swift
//  project5
//
//  Created by Turma01-5 on 04/11/24.
//

import SwiftUI

struct HaPo: Codable, Identifiable{
    let id: String
    let name: String?
    let alternate_names: [String]?
    let species: String?
    let gender: String?
    let house: String?
    let dateOfBirth: String?
    let yearOfBirth: Int?
    let wizard: Bool?
    let ancestry: String?
    let eyeColour: String?
    let hairColour: String?
    let wand: Wand
    let patronus: String?
    let hogwartsStudent: Bool?
    let hogwartsStaff: Bool?
    let actor: String?
    let alternative_actors: [String]?
    let alive: Bool?
    let image: String?
}

struct Wand : Codable{
    let wood: String?
    let core: String?
    let lenght: Double?
}

class ViewModel : ObservableObject{
    @Published var chars : [HaPo] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "https://hp-api.onrender.com/api/characters/house/gryffindor")!){
            data, _, error in
            do {
                self.chars = try JSONDecoder().decode([HaPo].self, from: data!)
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
        NavigationView{
            ZStack{
                Color(.redred).ignoresSafeArea()
                VStack{
                    AsyncImage(url: URL(string: "https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2023/04/25/1910058658-ghostrider-nicolascage.jpg"), content: { returnedImage in returnedImage.resizable().scaledToFill().frame(width: 200, height: 200)
                    }, placeholder: {
                        ProgressView()
                    }).padding(60)
                    ScrollView{
                        VStack{
                            ForEach(viewmodel.chars){ p in
                                let url = URL(string: p.image!)
                                NavigationLink(destination: CharView(p: p)){
                                    HStack{
                                        AsyncImage(url: url, content: { returnedImage in returnedImage.resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        }, placeholder: {
                                            Color.gray
                                        }).frame(width: 90, height: 90).cornerRadius(100)
                                        Text(p.name!).bold()
                                            .foregroundColor(Color.white)
                                        Spacer()
                                    }.padding()
                                }
                            }
                        }
                    }.background(Color.redred)
                }
            }
        }
        .onAppear(){viewmodel.fetch()}
    }
}

#Preview {
    ContentView()
}
