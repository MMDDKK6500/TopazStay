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
        ScrollView {
            VStack {
                ZStack(alignment: .topTrailing) {
                    Image(hotel.imagem)
                        .resizable()
                        .scaledToFill()
                        .containerRelativeFrame(.vertical) {
                            size, axis in
                            size * 0.35
                        }
                        .clipped()
                        .ignoresSafeArea()
                    Button(action: {/*toggle*/}) {
                        Image(systemName: hotel.favorito ? "heart.fill" : "heart")
                            .foregroundStyle(hotel.favorito ? .red : Color.secondary)
                            .font(.title)
                            .padding(.top, 60)
                            .padding(.trailing, 20)
                    }
                }
                
                VStack {
                    HStack {
                        Text(hotel.nome)
                            .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 32))
                        Spacer()
                    }
                    HStack {
                        Text(hotel.local)
                            .font(Font.custom("Poppins-Regular", size: 15))
                        Spacer()
                    }
                    
                    HStack {
                        Text(String(hotel.avaliacao))
                        Spacer()
                    }
                    
                    HStack {
                        Text(hotel.descricao)
                            .font(Font.custom("Poppins-Regular", size: 12))
                            .foregroundStyle(Color.cinzaTexto)
                        Spacer()
                    }
                    
                    ForEach(hotel.quartos) { quarto in
                        QuartoCard(quarto: quarto)
                    }
                    
                    HStack {
                        Text("Comentários")
                            .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 25))
                        Spacer()
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 0)
                    
                    ForEach(hotel.comentarios) { comentario in
                        ComentarioCard(comentario: comentario)
                    }
                    
                    Spacer()
                }
                .padding()
            }
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
                .ignoresSafeArea()
        )
    }
}

#Preview {
    
    @Previewable let hotel: Hotel = Hotel(
        nome: "Hotel dos bão",
        local: "aqui",
        avaliacao: 5,
        descricao: "Hotel muito bom com uma descrição muito boa que nunca acaba pois esse hotel realmente é muito muito bom ta?\n\nTipo, muito bom mesmo mano, c não tem IDEIA do quão bom esse hotel é mano, slg, se chama copacaban palace, e vc NUNCA vai adivinhar isso... fica em copacabana",
        imagem: "imagens/hoteis/2",
        favorito: true,
        quartos: [
            Quarto(
                nome: "Padrão",
                descricao: "Descrição genial",
                maxPessoas: 2,
                valor: 350,
                imagem: "imagens/quartos/8"
            ),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8")],
        comentarios: [
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            ),
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            ),
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            )
        ])
    
    TelaHotel(hotel: hotel)
}
