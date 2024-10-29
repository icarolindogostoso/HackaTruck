//
//  Desafio_05.swift
//  Aula_01
//
//  Created by Turma01-5 on 24/10/24.
//

import SwiftUI

struct Desafio_05: View {
    @State private var altura: String = ""
    @State private var alturaNumero: Double = 0
    @State private var peso: String = ""
    @State private var pesoNumero: Double = 0
    @State private var texto: String = "IMC"
    @State private var cor: String = "branco"
    @State var varial: Double = 0.0
    var body: some View {
        ZStack{
            Color(cor).ignoresSafeArea()
            VStack{
                Text("Calculadora de IMC").font(.largeTitle)
                
                TextField("Digite uma altura", text: $altura).keyboardType(.decimalPad).textContentType(.oneTimeCode).padding().background(Color.white).cornerRadius(10).multilineTextAlignment(.center)
                
                TextField("Digite um peso", text: $peso).keyboardType(.decimalPad).textContentType(.oneTimeCode).padding().background(Color.white).cornerRadius(10).multilineTextAlignment(.center)
                
                Button(action: {coiso()}, label: {Text("Calcular").font(.headline).bold().foregroundStyle(.white).padding().background(Capsule())})
                
                Spacer()
                
                Text(texto).font(.title)
                
                Spacer()
                
                
            }.padding()
        }
    }
    
    func coiso(){
        pesoNumero = (peso as NSString).doubleValue
        alturaNumero = (altura as NSString).doubleValue
         varial = pesoNumero / pow(alturaNumero,2)
        if (varial < 18.5){
            texto = "Baixo peso"
            cor = "baixopeso"
        } else if (varial >= 18.5 && varial < 24.9){
            texto = "Normal"
            cor = "normal"
        } else if (varial >= 25 && varial < 29.9){
            texto = "Sobrepeso"
            cor = "sobrepeso"
        } else if (varial >= 30){
            texto = "Obesidade"
            cor = "obesidade"
        }
    }
}

#Preview {
    Desafio_05()
}
