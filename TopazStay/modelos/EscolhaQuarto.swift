//
//  EscolhaQuarto.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 14/04/26.
//

import Foundation

//Modelo para a escolha de um quarto, com quantidade
class EscolhaQuarto: Identifiable {
    var id = UUID()
    var quarto: Quarto
    var quantidade: Int
    
    init(quarto: Quarto, quantidade: Int) {
        self.quarto = quarto
        self.quantidade = quantidade
    }
}
