//
//  Quarto.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 09/04/26.
//

import Foundation

struct Quarto: Identifiable {
    var id = UUID()
    var nome: String
    var descricao: String
    var maxPessoas: Int
    var valor: Double
    
    var imagem: String
    
}
