//
//  merda.swift
//  project3
//
//  Created by Turma01-5 on 31/10/24.
//

import SwiftUI

struct Songue : Hashable{
    var name : String
    var artist : String
    var capa : String
}

struct merda: View {
    let url = URL(string: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19")
    let musica = Song(name: "merda", artist: "merda", capa: "https://i.scdn.co/image/ab67616d0000b273708ed519ab2ea26c8ba69a19")
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: .init(colors: [.blue,.black]), startPoint: .top, endPoint: .center)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                Spacer()
                AsyncImage(url: url, content: { returnedImage in returnedImage.resizable().scaledToFill().frame(width: 250, height: 250)
                }, placeholder: {
                    ProgressView()
                })
                Text(musica.name).foregroundColor(Color.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(musica.artist).foregroundColor(Color.white)
                Spacer()
                HStack{
                    Image(systemName: "shuffle").resizable().frame(width: 30,height: 30)
                        .foregroundColor(Color.white).padding()
                        Image(systemName: "backward.end.fill").resizable().frame(width: 40,height: 40)
                            .foregroundColor(Color.white).padding()
                        Image(systemName: "play.fill").resizable().frame(width: 50,height: 50)
                        .foregroundColor(Color.white).padding()
                        Image(systemName: "forward.end.fill").resizable().frame(width: 40,height: 40)
                            .foregroundColor(Color.white).padding()
                        Image(systemName: "repeat").resizable().frame(width: 30,height: 30)
                        .foregroundColor(Color.white).padding()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    merda()
}
