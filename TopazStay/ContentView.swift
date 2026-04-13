//
//  ContentView.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 07/04/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            TabView {
                Tab("Explorar", systemImage: "sparkles") {
                    TelaExplorar(hoteis: hoteis)
                }
                
                Tab("Reservas", systemImage: "calendar") {
                    TelaReservas(pesquisa: "", reservas: reservas)
                }
                
                Tab("Favoritos", systemImage: "heart.fill") {
                    Text("Tela de Favoritos")
                }
                
                Tab("Perfil", systemImage: "person") {
                    Text("Tela de Perfil")
                }
            }
            .tint(Color.accentColor)
            
            // 2. Estilização da Barra (Fundo e Visibilidade)
            .toolbarBackground(.white, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}
