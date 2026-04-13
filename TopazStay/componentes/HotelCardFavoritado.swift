//
//  HotelCard.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//

import SwiftUI

struct HotelCardFavoritado: View {
    var hotel: Hotel

    var body: some View {
        HStack {
            // Parte do texto
            VStack(alignment: .leading, spacing: 4) {
                Text(hotel.nome)
                    .font(.custom("Rounded Mplus 1c ExtraBold", size: 23))
                
                Text(hotel.categoria.rawValue)
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(.cinzaTexto)
                
                Spacer().frame(height: 5)
                
                Text(hotel.local)
                    .font(.custom("Poppins-Regular", size: 15))
                
                // Estrelas
                HStack(spacing: 0) {
                    ForEach(0..<hotel.avaliacao, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.laranjaEscuroEstrela)
                            .font(.system(size: 20))
                    }
                }
                
                HStack {
                    Text("A partir de R$")
                        .font(.custom("Poppins-Regular", size: 15))
                    Text(String(format: "%.2f", hotel.preco))
                        .font(.custom("Poppins-Medium", size: 15))
                }
                .padding(5)
            }
            .padding(.all, 15)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            // Imagem
            ZStack(alignment: .topTrailing) {
                Image(hotel.imagem)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 148, height: 159)
                Button(action: {/*toggle*/}) {
                    Image(systemName: hotel.favorito ? "heart.fill" : "heart")
                        .foregroundStyle(hotel.favorito ? .red : Color.secondary)
                        .font(.title)
                        .padding(.top, 10)
                        .padding(.trailing, 20)
                }
            }
            
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

#Preview {
    
    @Previewable let hotel: Hotel = Hotel(
        nome: "Hotel Palace",
        local: "São Paulo - Jardins",
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
    
    HotelCardFavoritado(hotel: hotel)
}
