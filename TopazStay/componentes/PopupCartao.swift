//
//  PopupPagamento.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//  Editer by AGATHA
//

import SwiftUI


// Pop up de cartões
struct PopupCartao: View {
    
    @State var cardSelected = false
    @Binding var mostrar: Bool
    @State private var mostrarPopupAddCartao: Bool = false
    
    @State public var mostrarPopupSucesso: Bool = false

    @State private var path = ContentView(selectTab: .reservas)
    
    @EnvironmentObject var dados: ObservableDados
    
    var body: some View {
        // parte da agatha
        Group {
            if mostrarPopupAddCartao {
                // --- TELA 2: CADASTRO DE CARTÃO ---
                PopupAddCartao(mostrar: $mostrarPopupAddCartao)
                    .transition(.asymmetric(
                        insertion: .opacity.combined(with: .scale(scale: 0.95)),
                        removal: .opacity.combined(with: .scale(scale: 0.95))
                    ))
            }else if mostrarPopupSucesso == true{
                ReservaConfirmada( mostrarPopupSucesso: $mostrarPopupSucesso)
                    .transition(.asymmetric(
                        insertion: .opacity.combined(with: .scale(scale: 0.95)),
                        removal: .opacity.combined(with: .scale(scale: 0.95))
                    ))
            }
            else {
                // --- TELA 1: ESCOLHA DO CARTÃO ---
                // parte do duque
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
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.white)
                                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                            )
                    }
                    .padding(.top, 5)
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
                            withAnimation {
                                mostrarPopupSucesso = true
                                dados.escolhaQuartos = []
                            }
                        }) { Text("Pagar")
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
   
        /*if mostrarPopupSucesso == true {
            // Fundo escurecido atrás do popup
            Color.black.opacity(0.4)
                .ignoresSafeArea()
                .onTapGesture {
                withAnimation { mostrarPopupSucesso = false }
                }
            
            // O Componente do Popup
            ReservaConfirmada(mostrarPopupSucesso: $mostrarPopupSucesso)
                .transition(.scale(scale: 0.9).combined(with: .opacity))
                .zIndex(1) // Garante que fique no topo
        }.frame(width: 493, height: 852)*/
    
}

#Preview {
    @Previewable @State var mostrar = true
    @Previewable @State var sucesso = true
    ZStack {
        Color.gray.ignoresSafeArea()
        PopupCartao(mostrar: $mostrar)
    }
}
