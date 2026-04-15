//
//  Comentario.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 10/04/26.
//

import Foundation

//Modelo de um comentário
struct Comentario: Identifiable {
    var id = UUID()
    var foto: String
    var nome: String
    var avaliacao: Int
    var texto: String
}

