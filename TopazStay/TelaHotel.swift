//
//  TelaHotel.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 09/04/26.
//

import SwiftUI

struct TelaHotel: View {
    
    var hotel: Hotel;
    
    var body: some View {
            VStack {
                Image(hotel.imagem)
                    .resizable()
                    .scaledToFill()
                    .containerRelativeFrame(.vertical) {
                        size, axis in
                        size * 0.35
                    }
                    .clipped()
                    .ignoresSafeArea()
                    .border(.green)
                
                VStack {
                    HStack {
                        Text(hotel.nome)
                            .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 32))
                        Spacer()
                    }
                    HStack {
                        Text(hotel.local)
                        Spacer()
                    }
                    
                    HStack {
                        Text("aaa")
                        Spacer()
                    }
                    
                    Spacer()
                }
                .padding()
            }
            .ignoresSafeArea()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(
                        LinearGradient(
                            colors: [Color.gradienteAzul, Color.white],
                            startPoint: .top,
                            endPoint: .bottom,
                        )
                    )
            )
    }
}

#Preview {
    
    @Previewable let hotel: Hotel = Hotel(nome: "Hotel dos bão", local: "aqui", avaliacao: 5, descricao: "Hotel muito bom", imagem: "imagens/hoteis/2", quartos: [Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/5")], comentarios: "a")
    
    TelaHotel(hotel: hotel)
}
