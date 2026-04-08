//
//  PopupPagamento.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//

import SwiftUI

struct PopupPix: View {
    
    var body: some View {
        VStack {
            Text("Leia o QR-Code")
                .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 30))
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .containerRelativeFrame(.horizontal) { size, axis in
                    size * 0.5
                }
            
            Button(action: doSomething) {
                Text("Copiar código pix")
                    .font(Font.custom("Poppins", size: 16))
                    .underline()
                    .foregroundStyle(Color.black)
            }
            
            Button(action: doSomething) {
                Text("Cancelar")
                    .foregroundStyle(Color.white)
                    .font(Font.custom("Poppins-Medium", size: 20))
                    .padding(15)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.bordaCartaoBotaoPopup)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        )
            }
        }
        .padding()
        .padding(Edge.Set.horizontal, 50)
        //.padding(Edge.Set.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(
                    LinearGradient(
                        colors: [Color.gradienteLaranja, Color.white],
                        startPoint: .top,
                        endPoint: .bottom,
                    )
                )
        )
    }
}

func doSomething() {
    
}

#Preview {
    PopupPix()
}
