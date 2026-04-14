//
//  Reservas.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 13/04/26.
//

import Foundation

var reservas: [Reserva] = [
    Reserva(
        hotel: hoteis[0],
        quartosSelecionados: [hoteis[0].quartos[0]],
        dataInicio: Date(),
        dataFim: Date()
    )
]
