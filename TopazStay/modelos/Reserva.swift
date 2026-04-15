//
//  Reserva.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 13/04/26.
//

import Foundation

// Modelo de reserva, com o hotel, quartos, e datas
struct Reserva: Identifiable {
    var id = UUID()
    var hotel: Hotel
    var quartosSelecionados: [Quarto]
    var dataInicio: Date
    var dataFim: Date
    
    var isPast: Bool {
            dataFim < Date()
    }
}
