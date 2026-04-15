//
//  ObservableDados.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 14/04/26.
//

import Foundation
internal import Combine
import SwiftUI

// Classe com dados temporários do app
class ObservableDados: ObservableObject {
    @Published var escolhaQuartos: [EscolhaQuarto] = []
}
