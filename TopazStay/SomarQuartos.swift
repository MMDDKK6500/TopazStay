//
//  SomarQuartos.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 14/04/26.
//

import Foundation


func somaDosQuartos(quartos: [Quarto]) -> Double
{
    var soma: Double = 0
    for quarto in quartos {
        soma += quarto.valor
    }
    return soma
}
