//
//  Quarto.swift
//  project
//
//  Created by Turma01-5 on 30/10/24.
//

import SwiftUI

struct Quarto: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    HStack{
                        Text("Texto")
                        Spacer()
                        Image(systemName: "eraser.fill")
                    }
                    HStack{
                        Text("Texto")
                        Spacer()
                        Image(systemName: "eraser.fill")
                    }
                    HStack{
                        Text("Texto")
                        Spacer()
                        Image(systemName: "eraser.fill")
                    }
                }.navigationTitle("Menu")
            }
        }
        
        
    }
}

#Preview {
    Quarto()
}
