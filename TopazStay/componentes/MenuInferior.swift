//
//  MenuInferior.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 10/04/26.
//

import SwiftUI

struct MenuInferior: View {
    var body: some View {
        
        TabView {
            Tab("Explorar", systemImage: "sparkles") {
                TelaExplorar()
            }
    
            Tab("Reservas", systemImage: "calendar") {
                Text("Tela de Reservas")
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
 
#Preview {
     MenuInferior()
}
