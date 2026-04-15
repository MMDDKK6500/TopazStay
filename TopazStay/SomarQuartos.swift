//
//  SomarQuartos.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 14/04/26.
//

import Foundation

// Função de soma da reserva v2, feito pelo joão duque
func somaDosQuartos(quartos: [EscolhaQuarto]) -> Double {
    var soma: Double = 0
    for quarto in quartos {
        soma += (quarto.quarto.valor * Double(quarto.quantidade))
    }
    return soma
}
