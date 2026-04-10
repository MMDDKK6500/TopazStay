//
//  TelaReservas.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 10/04/26.
//

import SwiftUI

struct TelaReservas: View {
    
    @State var pesquisa: String = ""
    @State var teste = true
    
    var body: some View {
        VStack {
            MenuSuperior(textoPesquisa: $pesquisa)
            Text("Reservas")
                .font(.custom("Poppins-Regular", size: 40))
            Spacer()
            
            
        }
    }
}

#Preview {
    TelaReservas()
}
