//
//  TelaReservas.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 10/04/26.
//

import SwiftUI

enum selected: String, CaseIterable, Identifiable {
    case ativas, anteriores
    var id: Self { self }
}

struct TelaReservas: View {
    
    @State var pesquisa: String = ""
    var reservas: [Reserva]
    
    @State private var selectedPeriod: selected = .ativas
    
    var body: some View {

        
        VStack(alignment: .leading, spacing: 20) {
            MenuSemBarraPesquisa()
                .ignoresSafeArea()
            Text("Reservas")
                .font(.custom("Poppins-Regular", size: 40))
                .padding(.leading, 20)
                .foregroundColor(.cinzaTexto.opacity(0.7))
                
            
            Picker("Periodo", selection: $selectedPeriod) {
                Text("Ativas").tag(selected.ativas)
                Text("Anteriores").tag(selected.anteriores)
            }
            .pickerStyle(.segmented)
            .padding(.trailing, 200)
            .padding(.leading, 15)
            
            ForEach(reservas) { reserva in
                ReservaCard(reserva: reserva)
            }
            
            Spacer()
            
        }
        .ignoresSafeArea(edges: .top)
        .background(
            LinearGradient(
                colors: [Color.gradienteAzul, Color.white],
                startPoint: .top,
                endPoint: .bottom
            )
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
    
    TelaReservas(reservas: [
        Reserva(
            hotel: hotel,
            quartosSelecionados: [hotel.quartos.first ?? Quarto(
                nome: "Ruim",
                descricao: "Descrição genial",
                maxPessoas: 2,
                valor: 350,
                imagem: "imagens/quartos/8"
            )],
            dataInicio: Date(),
            dataFim: Date()
        )
    ])
}
