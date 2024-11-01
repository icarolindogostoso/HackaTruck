//
//  ContentView.swift
//  Aula_01
//
//  Created by Turma01-5 on 23/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Rectangle().fill(.red).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                Spacer()
                Rectangle().fill(.blue).frame(width: 100, height: 100)
            }
            Spacer()
            HStack{
                Rectangle().fill(.green).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
                Spacer()
                Rectangle().fill(.yellow).frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
