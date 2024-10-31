//
//  ContentView.swift
//  project3
//
//  Created by Turma01-5 on 31/10/24.
//

import SwiftUI

struct Song : Hashable{
    var name : String
    var artist : String
    var capa : String
}

struct ContentView: View {
    let url = URL(string: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19")
    
    var arrayMusicas = [
        Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),
        Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19"),Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19")
    ]
    var body: some View {
        NavigationStack{
                ZStack{
                    LinearGradient(gradient: .init(colors: [.blue,.black]), startPoint: .top, endPoint: .center)
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ScrollView{
                    VStack{
                        AsyncImage(url: url, content: { returnedImage in returnedImage.resizable().scaledToFill().frame(width: 200, height: 200)
                        }, placeholder: {
                            ProgressView()
                        })
                        VStack(alignment: .leading){
                            Text("Icarolindogostoso").foregroundColor(Color.white).font(.largeTitle).bold()
                            
                            HStack{
                                AsyncImage(url: url, content: { returnedImage in returnedImage.resizable().scaledToFill().frame(width: 20, height: 20)
                                }, placeholder: {
                                    ProgressView()
                                })
                                Text("icarolindogostoso").foregroundColor(Color.white)
                            }
                            
                            ForEach(arrayMusicas, id: \.self) { e in
                                let urlfoto = URL(string: e.capa)
                                HStack{
                                    NavigationLink(destination: merda()){
                                        AsyncImage(url: urlfoto, content: { returnedImage in returnedImage.resizable().scaledToFill().frame(width: 50, height: 50)
                                        }, placeholder: {
                                            ProgressView()
                                        })
                                        
                                        VStack(alignment: .leading){
                                            Text(e.name)
                                                .foregroundColor(Color.white)
                                            Text(e.artist).foregroundColor(.white).font(.caption)
                                        }
                                        Spacer()
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }.padding(.vertical, 5)
                        }
                    }
                    .padding(15)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
