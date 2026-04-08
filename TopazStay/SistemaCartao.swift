//
//  SistemaCartao.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//

import SwiftUI


struct SistemaCartao: View {
    
    @State private var card1Selected: Bool = false
    @State private var card2Selected: Bool = false
    @State private var card3Selected: Bool = false
    
    var body: some View {
        
        Button(action: {
            card1Selected.toggle()
            card2Selected = false
            card3Selected = false
        }) {
            CardCartao(isSelected: $card1Selected)
        }
        
        Button(action: {
            card1Selected = false
            card2Selected.toggle()
            card3Selected = false
        }) {
            CardCartao(isSelected: $card2Selected)
        }
        
        Button(action: {
            card1Selected = false
            card2Selected = false
            card3Selected.toggle()
        }) {
            CardCartao(isSelected: $card3Selected)
        }
    }
}

#Preview {
    SistemaCartao()
}
