//
//  TelaInicial.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 08/04/26.
//

import SwiftUI

struct TelaInicial: View {
    var body: some View {
        ZStack {
            //Fundo em gradiente
            LinearGradient(
                gradient: Gradient(colors: [Color.gradienteAzul, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            //Conteúdo de tela
            VStack(spacing: 21) {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 244, height: 267)
                
                Text("Sua estadia sem complicação.")
                    .font(.custom("Poppins-Regular", size: 20))
                    .foregroundColor(.cinzaTexto)
                    .opacity(0.8)
        
                Spacer()
                
            
            }
        
        }
    }
}

#Preview {
    TelaInicial()
}
