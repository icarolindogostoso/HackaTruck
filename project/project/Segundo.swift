//
//  Segundo.swift
//  project
//
//  Created by Turma01-5 on 30/10/24.
//

import SwiftUI

struct Segundo: View {
    var body: some View {
        ZStack{
            Color("segundo").edgesIgnoringSafeArea(.top)
            VStack{
                Spacer()
                Image(systemName: "pencil.circle.fill").resizable().frame(width: 300,height: 300)
                Spacer()
            }
        }
    }
}

#Preview {
    Segundo()
}
