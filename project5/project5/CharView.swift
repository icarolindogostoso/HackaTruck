//
//  CharView.swift
//  project5
//
//  Created by Turma01-5 on 04/11/24.
//

import SwiftUI

struct CharView: View {
    @State var p : HaPo
    var body: some View {
        ZStack{
            Color(.redred).ignoresSafeArea()
            VStack{
                AsyncImage(url: URL(string: p.image!), content: { returnedImage in returnedImage.resizable().scaledToFill().frame(width: 200, height: 200)
                }, placeholder: {
                    Color.gray
                }).frame(width: 300, height: 300)
                Text(p.name!).foregroundColor(Color.white).font(.largeTitle)
            }
        }
        
        
    }
}

//#Preview {
//    CharView()
//}
