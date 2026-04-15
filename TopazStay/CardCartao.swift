//
//  CardCartao.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//

import SwiftUI

// Componente com o cartão, utilizado em popup cartão
struct CardCartao: View {
    
    @Binding var isSelected: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "creditcard")
                    .foregroundStyle(isSelected ?
                                     Color.bordaCartaoBotaoPopup: Color(.secondaryLabel))
                Text("2123 **** **** 2256")
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .foregroundStyle(Color(.secondaryLabel))
                Spacer()
                ZStack{
                    Circle()
                        .frame(width: 15, height: 15)
                        .foregroundColor(isSelected ?
                                         Color.bordaCartaoBotaoPopup: Color(.secondaryLabel))
                    if isSelected {
                        Image(systemName: "checkmark")
                            .font(Font.system(size: 10))
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding(Edge.Set.horizontal, 10)
            
            HStack {
                Text("João Cardoso")
                    .font(Font.custom("Poppins-Regular", size: 12))
                    .foregroundStyle(Color(.label))
                Spacer()
            }
            .padding(Edge.Set.horizontal, 10)
            
            HStack {
                Text("Expira em 08/27")
                    .font(Font.custom("Poppins-Regular", size: 9))
                    .foregroundStyle(Color(.secondaryLabel))
                Spacer()
            }
            .padding(Edge.Set.horizontal, 10)
        }
        .padding(5)
        .background(
            RoundedRectangle(cornerRadius: 5)
                .fill(Color(.systemBackground))
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
        )
    }
}

#Preview {
    
    @Previewable @State var isSelected: Bool = true
    
    CardCartao(isSelected: $isSelected)
}
