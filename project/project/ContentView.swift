//
//  ContentView.swift
//  project
//
//  Created by Turma01-5 on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Primeiro().tabItem{
                Label("Primeiro", systemImage: "tray.and.arrow.down.fill")
            }
            Segundo().tabItem{
                Label("Segundo", systemImage: "tray.and.arrow.down.fill")
            }
            Terceiro().tabItem{
                Label("Terceiro", systemImage: "tray.and.arrow.down.fill")
            }
            Quarto().tabItem{
                Label("Quarto", systemImage: "tray.and.arrow.down.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
