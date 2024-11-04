//
//  ContentView.swift
//  project4
//
//  Created by Turma01-5 on 01/11/24.
//

import SwiftUI
import MapKit

struct Location : Identifiable{
    let id = UUID()
    let name : String
    let coordinate : CLLocationCoordinate2D
    let flag : String
    let description : String
}

struct ContentView: View {
    
    @State var valor = false
    
    @State var auxiliar = Location(name: "Pompeia", coordinate: CLLocationCoordinate2D(latitude: -5.748836, longitude:-35.240719), flag: "https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2023/04/25/1910058658-ghostrider-nicolascage.jpg", description: "O lugar mais divertido de natal rn")
    
    @State private var positiones = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -5.748836, longitude: -35.240719), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
    
    @State private var positions = [
        Location(name: "Pompeia", coordinate: CLLocationCoordinate2D(latitude: -5.748836, longitude:-35.240719), flag: "https://p2.trrsf.com/image/fget/cf/774/0/images.terra.com/2023/04/25/1910058658-ghostrider-nicolascage.jpg", description: "O lugar mais divertido de natal rn"),
        Location(name: "Economy suites", coordinate: CLLocationCoordinate2D(latitude: -5.871405, longitude: -35.182640), flag: "https://media-gru1-2.cdn.whatsapp.net/v/t61.24694-24/463940730_924661792854088_6525280992020775787_n.jpg?ccb=11-4&oh=01_Q5AaIPGjuOyzapdXJ0K8VCtPA_lIaK_Xag3AK6vif2OKH8a1&oe=67321D14&_nc_sid=5e03e0&_nc_cat=106", description: "este lugar guarda o professor que sera assaltado")]
    
    var body: some View {
        ZStack{
            Map(position: $positiones){
                ForEach(positions) { position in
                    let foto = URL(string: position.flag)
                    Annotation("", coordinate: position.coordinate){
                        Image(systemName: "trash.slash.circle.fill")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .foregroundColor(Color.red)
                            .onTapGesture {
                                auxiliar = position
                                
                                valor.toggle()
                            }
                    }
                }
            }.sheet(isPresented: $valor){
                VStack{
                    Text(auxiliar.name)
                    AsyncImage(url: URL(string:auxiliar.flag), content: { returnedImage in returnedImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 90, height: 90)
                    }, placeholder: {
                        ProgressView()
                    })
                    Text(auxiliar.description)
                }
            }
            
            VStack{
                Spacer()
                HStack{
                    ForEach(positions) { position in
                        let urlfoto = URL(string: position.flag)
                        AsyncImage(url: urlfoto, content: { returnedImage in returnedImage
                                .resizable()
                                .scaledToFill()
                                .frame(width: 90, height: 90)
                        }, placeholder: {
                            ProgressView()
                        }).onTapGesture {
                            positiones = MapCameraPosition.region(MKCoordinateRegion(center: position.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)))
                        }
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
