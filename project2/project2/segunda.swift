//
//  segunda.swift
//  project2
//
//  Created by Turma01-5 on 30/10/24.
//

import SwiftUI

struct segunda: View {
    var body: some View {
        ZStack{
            Color("fundo").ignoresSafeArea()
            VStack{
                Text("Bad brains")
                    .foregroundColor(Color.white).font(.largeTitle)
                Spacer()
                VStack{
                    Text("Nome: nome")
                        .foregroundColor(Color.white)
                    Text("Sobrenome: sobrenome")
                        .foregroundColor(Color.white)
                }.frame(width: 250,height: 100)
                    .background(Color.red)
                    .cornerRadius(10.0)
                Spacer()
            }
        }
    }
}

#Preview {
    segunda()
}
