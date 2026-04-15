//
//  ContentView.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 07/04/26.
//

import SwiftUI

enum Tabs: Equatable, Hashable{
    case explorar
    case reservas
    case favoritos
    case perfil
}


struct ContentView: View {
    
    @State var selectTab: Tabs = .explorar
    
    var body: some View {
       
        TabView(selection: $selectTab){
            Tab("Explorar", systemImage: "sparkles", value: .explorar) {
                TelaExplorar(hoteis: hoteis)
            }
            
            Tab("Reservas", systemImage: "calendar", value: .reservas) {
                TelaReservas(pesquisa: "", reservas: reservas)
            }
            
            Tab("Favoritos", systemImage: "heart.fill", value: .favoritos) {
                TelaFavoritos(hoteis: hoteis)
            }
            
            Tab("Perfil", systemImage: "person", value: .perfil) {
                //TelaPerfil(hoteis: hoteis)
            }
        }
        .tint(Color.accentColor)
        
        // 2. Estilização da Barra (Fundo e Visibilidade)
        .toolbarBackground(.white, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
    }
    
}

#Preview {
    ContentView()
}
