//
//  QuartoCard.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 09/04/26.
//

import SwiftUI

struct QuartoCard: View {
    
    var quarto: Quarto
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundStyle(Color.white)
                .containerRelativeFrame(.vertical) {
                    size, axis in
                    size * 0.15
                }
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                .overlay(
                    HStack {
                        Spacer()
                        Image(quarto.imagem)
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .containerRelativeFrame(.vertical) {
                                size, axis in
                                size * 0.15
                            }
                            .containerRelativeFrame(.horizontal) {
                                size, axis in
                                size * 0.35
                            }
                            .clipShape(
                                UnevenRoundedRectangle(
                                    // Specify radius for each corner
                                    topLeadingRadius: 0,
                                    bottomLeadingRadius: 0,
                                    bottomTrailingRadius: 12,
                                    topTrailingRadius: 12
                                )
                            )
                    }
                )
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text(quarto.nome)
                            .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 20))
                        //Spacer()
                    }
                    Label("até " + String(quarto.maxPessoas) + " pessoas", systemImage: "person.2")
                        .font(Font.custom("Poppins-Regular", size: 15))
                    
                    Text("R$ " + String(format: "%.2f", quarto.valor) + "")
                        .font(Font.custom("Poppins-Medium", size: 15))
                }
                .padding(.leading, 20)
            }
        }
    }
}

#Preview {
    QuartoCard(quarto: Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/hoteis/3"))
}
