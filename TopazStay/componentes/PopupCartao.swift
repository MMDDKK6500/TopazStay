//
//  PopupPagamento.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//

import SwiftUI

struct PopupCartao: View {
    
    @State var cardSelected = false
    @Binding var mostrar: Bool
    @State private var mostrarPopupAddCartao: Bool = false
    
    var body: some View {
        Group {
            if mostrarPopupAddCartao {
                // --- TELA 2: CADASTRO DE CARTÃO ---
                PopupAddCartao(mostrar: $mostrarPopupAddCartao)
                    .transition(.asymmetric(
                        insertion: .opacity.combined(with: .scale(scale: 0.95)),
                        removal: .opacity.combined(with: .scale(scale: 0.95))
                    ))
            } else {
                // --- TELA 1: ESCOLHA DO CARTÃO ---
                VStack {
                    Text("Escolha um cartão para continuar")
                        .font(Font.custom("Poppins-Regular", size: 15))
                        .padding(.bottom, 15)
                        .padding(.top, 15)
                    
                    SistemaCartao()
                    
                    Button(action: {
                        withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                            mostrarPopupAddCartao = true
                        }
                    }) {
                        Text("+ Adicionar um cartão")
                            .foregroundStyle(Color.cinzaTexto)
                            .font(Font.custom("Poppins-Medium", size: 15))
                            .padding(15)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.white)
                                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                            )
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 5)
                    
                    HStack {
                        Button(action: {
                            withAnimation {
                                mostrar = false
                            }
                        }) {
                            Text("Cancelar")
                                .foregroundStyle(Color.cinzaTexto)
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .padding(15)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(.white)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                                )
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Text("Pagar")
                                .foregroundStyle(Color.white)
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .padding(15)
                                .padding(.horizontal)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.bordaCartaoBotaoPopup)
                                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                                )
                        }
                    }
                }
                .padding()
                .padding(.horizontal, 30)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(
                            LinearGradient(
                                colors: [Color.gradienteLaranja, Color.white],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                )
                .transition(.opacity)
            }
        }
        .frame(maxWidth: 380)
        .padding(.horizontal, 30)
    }
}

#Preview {
    @Previewable @State var mostrar = true
    ZStack {
        Color.gray.ignoresSafeArea()
        PopupCartao(mostrar: $mostrar)
    }
}
