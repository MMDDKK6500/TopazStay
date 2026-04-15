//
//  Reservas.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 13/04/26.
//

import Foundation

// dados exemplo, agindo como banco de dados
var reservas: [Reserva] = [
    Reserva(
        hotel: hoteis[0],
        quartosSelecionados: [hoteis[0].quartos[0]],
        dataInicio: Date(),
        dataFim: Date()
    ),
    Reserva(
        hotel: hoteis[1],
        quartosSelecionados: [hoteis[1].quartos[0]],
        dataInicio: Date(timeIntervalSinceNow: 10000),
        dataFim: Date(timeIntervalSinceNow: 100000)
    ),
    Reserva(
        hotel: hoteis[1],
        quartosSelecionados: [hoteis[1].quartos[0]],
        dataInicio: Date(timeIntervalSinceNow: -1000000),
        dataFim: Date(timeIntervalSinceNow: -100000)
    )
]
