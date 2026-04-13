//
//  TelaHotel.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 09/04/26.
//

import SwiftUI

struct TelaHotel: View {
    
    var hotel: Hotel;
    //Estados para controlar o Popup
    @State private var mostrarPopup = false
    @State private var quartoParaPopup: Quarto? = nil
    
    var body: some View {
        ZStack {
            // CAMADA 1: Fundo (Background)
            LinearGradient(
                colors: [Color.gradienteAzul, Color.white],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
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
                        VStack {
                            HStack {
                                Text(hotel.nome)
                                    .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 32))
                                Spacer()
                            }
                            HStack {
                                Text(hotel.local)
                                    .font(Font.custom("Poppins-Regular", size: 15))
                                    .padding(.bottom, 4)
                                Spacer()
                            }
                            
                            HStack {
                                HStack(spacing: 0) {
                                    ForEach(0..<hotel.avaliacao, id: \.self) { _ in
                                        Image(systemName: "star.fill")
                                            .foregroundColor(.laranjaEscuroEstrela)
                                            .font(.system(size: 20))
                                    }
                                }
                                Spacer()
                            }
                            Spacer()
                            HStack {
                                Text(hotel.descricao)
                                    .font(Font.custom("Poppins-Regular", size: 12))
                                    .foregroundStyle(Color.cinzaTexto)
                                    .padding(.bottom, 10)
                                Spacer()
                            }
                        }
                        .padding(.horizontal, 20)
                        
                        ForEach(hotel.quartos) { quarto in
                            QuartoCard(quarto: quarto, aoSelecionar: {
                                self.quartoParaPopup = quarto
                                withAnimation(.easeInOut) {
                                    self.mostrarPopup = true
                                }
                            })
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    print("Clique no quarto: \(quarto.nome)")
                                    self.quartoParaPopup = quarto
                                    withAnimation(.easeInOut) {
                                        self.mostrarPopup = true
                                    }
                                }
                        }
                        
                        VStack{
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
                        }
                        .padding(.horizontal, 10)
                        
                        Spacer()
                    }
                    .padding()
                }
            }
            .disabled(mostrarPopup) // Desativa o scroll quando o popup está aberto
            .blur(radius: mostrarPopup ? 3 : 0) // Efeito visual opcional de desfoque
            
            // --- CAMADA DO POPUP ---
            if mostrarPopup, let quarto = quartoParaPopup {
                // Fundo escurecido
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation { mostrarPopup = false }
                    }
                
                // Card de Detalhes (Popup)
                PopupQuarto(quarto: quarto, mostrar: $mostrarPopup)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .zIndex(1)
            }
            
        }
        .ignoresSafeArea(edges: .top)
        
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
    
    TelaHotel(hotel: hotel)
}
