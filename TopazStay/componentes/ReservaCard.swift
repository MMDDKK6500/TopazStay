//
//  HotelCard.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//

import SwiftUI

struct ReservaCard: View {
    var reserva: Reserva

    var body: some View {
        VStack {
            Text("Periodo de Estadia - \(reserva.dataInicio.formatted(date: .numeric, time: .omitted)) a \(reserva.dataFim.formatted(date: .numeric, time: .omitted))")
                .font(Font.custom("Poppins-Regular", size: 15))
                .foregroundStyle(.white)
                .padding(.top, 15)
                //.padding(.bottom, 0)
            
            HStack {
                // Parte do texto
                VStack(alignment: .leading, spacing: 4) {
                    Text(reserva.hotel.nome)
                        .font(.custom("Rounded Mplus 1c ExtraBold", size: 23))
                    
                    Text(reserva.hotel.categoria.rawValue)
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.cinzaTexto)
                    
                    Spacer().frame(height: 5)
                    
                    Text(reserva.hotel.local)
                        .font(.custom("Poppins-Regular", size: 15))
                    
                    // Estrelas
                    HStack(spacing: 0) {
                        ForEach(0..<reserva.hotel.avaliacao, id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.laranjaEscuroEstrela)
                                .font(.system(size: 20))
                        }
                    }
                    
                    HStack {
                        Text("R$ \(String(reserva.hotel.preco))")
                            .font(.custom("Poppins-Medium", size: 15))
                    }
                    .padding(5)
                }
                .padding(.all, 15)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                // Imagem
                Image(reserva.hotel.imagem)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 148, height: 159)
            }
            .background(Color.white)
            .clipped()
            //.cornerRadius(15)
            
            HStack {
                Text(reserva.isPast ? "* Concluída" : "* Confirmada")
                    .font(.custom("Poppins-Regular", size: 15))
                Spacer()
                Button(action: doSomething) {
                    Label("Falar com anfitrião", systemImage: "bubble")
                        .padding(.vertical, 2)
                        .padding(.horizontal, 5)
                        .font(Font.custom("Poppins-Medium", size: 15))
                        .foregroundStyle(Color.white)
                }
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.laranjaEscuroEstrela)
                )
            }
            .padding(.horizontal, 30)
            .padding(.top, 2)
            .padding(.bottom, 10)
        }
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(LinearGradient(
                    colors: [Color.bordaCartaoBotaoPopup, Color.laranjaClaro],
                    startPoint: .top,
                    endPoint: .bottom,
                ))
        )
        .padding(.horizontal, 15)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
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
        categoria: CategoriaHotel.hotel,
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
    
    ReservaCard(reserva:
                    Reserva(
                        hotel: hotel,
                        quartosSelecionados: [hotel.quartos.first ?? Quarto(
                            nome: "Padrão",
                            descricao: "Descrição genial",
                            maxPessoas: 2,
                            valor: 350,
                            imagem: "imagens/quartos/8"
                        )],
                        dataInicio: Date(),
                        dataFim: Date()
                    )
    )
}
