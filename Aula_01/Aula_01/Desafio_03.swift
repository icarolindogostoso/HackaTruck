//
//  Desafio_03.swift
//  Aula_01
//
//  Created by Turma01-5 on 23/10/24.
//

import SwiftUI

struct Desafio_03: View {
    var body: some View {
        VStack{
            HStack{
                Circle().fill(.gray).frame(width: 120)
                VStack{
                    HStack{
                        VStack{
                            Text("8")
                            Text("Posts")
                        }
                        VStack{
                            Text("12k")
                            Text("Seguidores")
                        }
                        VStack{
                            Text("2k")
                            Text("Seguindo")
                        }
                    }
                    Text("Editar perfil")
                }
            }
            HStack{
                VStack{
                    HStack{
                        Text("Nome Sobrenome")
                        Spacer()
                    }
                    HStack{
                        Text("Texto muito impactante bom")
                        Spacer()
                    }
                }
            }
        }.padding()
        Spacer()
    }
}

#Preview {
    Desafio_03()
}
