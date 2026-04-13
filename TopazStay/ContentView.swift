//
//  ContentView.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 07/04/26.
//

import SwiftUI

struct ContentView: View {
    
    var hoteis: [Hotel]
    
    var body: some View {
    
        TabView {
            Tab("Explorar", systemImage: "sparkles") {
                TelaExplorar(hoteis: hoteis)
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
            ])
    ]
    
    ContentView(hoteis: hoteis)
}
