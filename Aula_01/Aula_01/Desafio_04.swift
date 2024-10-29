//
//  Desafio_04.swift
//  Aula_01
//
//  Created by Turma01-5 on 24/10/24.
//

import SwiftUI

struct Desafio_04: View {
    @State private var text: String = ""
    @State private var alerta = false
    var body: some View {
        ZStack{
            Image("transformers").resizable().ignoresSafeArea().opacity(0.3).blur(radius: 2.0)
            VStack{
                Text("Bem vindo, \(text)").font(.largeTitle)
                
                TextField("Digite seu nome aqui", text: $text).textFieldStyle(RoundedBorderTextFieldStyle()).padding().multilineTextAlignment(.center)
                
                Spacer()
                
                Image("otimus").resizable().frame(width: 250,height: 250)
                
                Spacer()
                
                Button("Entrar"){alerta = true}.alert("AUTOBOTS", isPresented: $alerta){} message: {Text("Autobots, vamos rodar")
                    
                }
            }
        }
    }
}

#Preview {
    Desafio_04()
}
