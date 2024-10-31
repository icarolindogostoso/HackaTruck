//
//  terceiro.swift
//  project2
//
//  Created by Turma01-5 on 30/10/24.
//

import SwiftUI

struct terceiro: View {
    @State var text: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                Color("fundo").ignoresSafeArea()
                VStack{
                    Text("Criatividade")
                                    .foregroundColor(Color.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    VStack{
                        TextField("Digite seu nome aqui", text: $text).textFieldStyle(RoundedBorderTextFieldStyle()).padding().multilineTextAlignment(.center)
                        Text("Bem vindo, \(text)").font(.largeTitle).foregroundColor(Color.white)
                        NavigationLink(destination: quarto(recebe: text)){
                            Text("naosei").foregroundColor(Color.white).frame(width: 150, height: 50).background(Color.blue).cornerRadius(10.0)
                        }
                    }.frame(width: 300,height: 250)
                        .background(Color.red)
                        .cornerRadius(10.0)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    terceiro()
}
