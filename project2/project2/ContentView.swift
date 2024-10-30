//
//  ContentView.swift
//  project2
//
//  Created by Turma01-5 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var valor = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color("fundo").ignoresSafeArea()
                VStack{
                    NavigationLink(destination: segunda()){
                        Text("segunda").foregroundColor(Color.white).frame(width: 250, height: 80).background(Color.red).cornerRadius(10.0)
                    }
                    NavigationLink(destination: terceiro()){
                        Text("terceiro").foregroundColor(Color.white).frame(width: 250, height: 80).background(Color.red).cornerRadius(10.0)
                    }
                    Button("shit view"){
                        valor.toggle()
                    }.foregroundColor(Color.white).frame(width: 250, height: 80).background(Color.red).cornerRadius(10.0).sheet(isPresented: $valor){
                        ZStack{
                            Color("fundo").ignoresSafeArea()
                            VStack{
                                Text("Shit View")
                                    .foregroundColor(Color.white).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
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
            }
        }
    }
}

#Preview {
    ContentView()
}
