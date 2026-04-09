//
//  PopupPagamento.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//

import SwiftUI

struct PopupCartao: View {
    
    @State var cardSelected = false;
    
    var body: some View {
        VStack {
            Text("Escolha um cartão para continuar")
                .font(Font.custom("Poppins-Regular", size: 15))
                .padding(.bottom, 15)
            
            SistemaCartao()
            
            Button(action: doSomething) {
                Label("Adicionar um cartão", systemImage: "plus")
                    .foregroundStyle(Color.secondary)
                    .padding(5)
                    .padding(.horizontal, 60)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                    )
            }
            .padding(.top, 20)
            .padding(.bottom, 5)
            
            HStack {
                Button(action: doSomething) {
                    Text("Cancelar")
                        .foregroundStyle(Color.cinzaTexto)
                        .font(Font.custom("Poppins-Medium", size: 20))
                        .padding(15)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.white)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        )
                }
                Spacer()
                Button(action: doSomething) {
                    Text("Pagar")
                        .foregroundStyle(Color.white)
                        .font(Font.custom("Poppins-Medium", size: 20))
                        .padding(15)
                        .padding(.horizontal)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.bordaCartaoBotaoPopup)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        )
                }
            }
        }
        .padding()
        .padding(Edge.Set.horizontal, 30)
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

#Preview {
    PopupCartao()
}
