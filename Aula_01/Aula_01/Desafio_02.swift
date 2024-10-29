//
//  Desafio_02.swift
//  Aula_01
//
//  Created by Turma01-5 on 23/10/24.
//

import SwiftUI

struct Desafio_02: View {
    var body: some View {
        VStack{
            HStack{
                Image("images").resizable().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width: 160,height: 160)
                Spacer()
                VStack{
                    Text("coiso").font(.title2).foregroundStyle(.red)
                    Text("coisobom").font(.title2).foregroundStyle(.green)
                    Text("coisodoido").font(.title2).foregroundStyle(.yellow)
                }
            }
        }
        .padding()
    }
}

#Preview {
    Desafio_02()
}
