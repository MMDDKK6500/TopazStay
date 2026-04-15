//
//  TelaFavoritos.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 13/04/26.
//

import SwiftUI

struct TelaFavoritos: View {
    
    var hoteis: [Hotel]
    @State private var mostrarLocal: Bool = false
    @State private var mostrarData: Bool = false
    @State private var mostrarCategoria: Bool = false
    
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
            VStack(alignment: .leading, spacing: 20) {
                    
                MenuSemBarraPesquisa(
                    mostrarFiltroCategoria: $mostrarCategoria,
                    mostrarFiltroData: $mostrarData,
                    mostrarFiltroLocal: $mostrarLocal
                )
                .ignoresSafeArea()
                
                Text("Favoritos")
                    .font(.custom("Poppins-Regular", size: 40))
                    .padding(.leading, 20)
                    .padding(.top, 10)
                    .padding(.bottom, -10)
                    .foregroundColor(.cinzaTexto.opacity(0.7))
                
                ScrollView() {
                    VStack(spacing: 19){
                      
                        ForEach (hoteis) { hotel in
                                HotelCardFavoritado(hotel: hotel)
                        }
                        
                    }
                    .padding()
                    
                }
                
            
            }
            .ignoresSafeArea(edges: .top)
            .blur(radius: (mostrarLocal || mostrarData || mostrarCategoria) ? 3 : 0)

            // Overlay Escuro (Fecha ao clicar fora)
            if mostrarLocal || mostrarData || mostrarCategoria {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            mostrarLocal = false
                            mostrarData = false
                            mostrarCategoria = false
                        }
                    }
            }

            // Chamada dos Pop-ups
            if mostrarLocal {
                Local(estaApresentado: $mostrarLocal)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .zIndex(1)
            }
            
            if mostrarData {
                ColetarData(estaApresentado: $mostrarData)
                    .transition(.scale.combined(with: .opacity))
                    .zIndex(1)
            }
            
            if mostrarCategoria {
                Categoria(estaApresentado: $mostrarCategoria)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .zIndex(1)
            }
        }
    }
}

#Preview {
    
    @Previewable var hoteis: [Hotel] = [
        Hotel(
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
            ]),
        Hotel(
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
            ]),
        
        Hotel(
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
        
        
    ]
    
    TelaFavoritos(hoteis: hoteis)
}

