//
//  quarto.swift
//  project2
//
//  Created by Turma01-5 on 30/10/24.
//

import SwiftUI

struct quarto: View {
    @State var recebe : String = ""
    var body: some View {
        ZStack{
            Color("fundo").ignoresSafeArea()
            VStack{
                Text("Va cagar, \(recebe)").font(.largeTitle).foregroundColor(Color.white)
            }.frame(width: 300,height: 250)
                .background(Color.red)
                .cornerRadius(10.0)
        }
    }
}

#Preview {
    quarto()
}
