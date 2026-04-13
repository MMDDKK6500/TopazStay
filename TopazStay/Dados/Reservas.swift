//
//  Reservas.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 13/04/26.
//

import Foundation

var reservas: [Reserva] = [
    Reserva(
        hotel: hoteis.first!,
        quartosSelecionados: [hoteis.first!.quartos.first ?? Quarto(
            nome: "Ruim",
            descricao: "Descrição genial",
            maxPessoas: 2,
            valor: 350,
            imagem: "imagens/quartos/8"
        )],
        dataInicio: Date(),
        dataFim: Date()
    )
]
