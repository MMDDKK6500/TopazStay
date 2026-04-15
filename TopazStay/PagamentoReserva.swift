//
//  PagamentoReserva.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 09/04/26.
//

import SwiftUI

struct PagamentoReserva: View {
    
    @State var hotel: Hotel
    @EnvironmentObject var dados: ObservableDados
    
    @State private var mostrarPopup: Bool = false
    
    var body: some View {
        ZStack {
            //Fundo em gradiente
            LinearGradient(
                gradient: Gradient(colors: [Color.gradienteAzul, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            VStack {
                ZStack {
                    Text("Reserva")
                        .font(
                            Font.custom("Poppins Regular", size: 30)
                        )
                        .foregroundColor(.cinzaTexto)
                        .opacity(0.7)
                        .padding(.top,-390)
                        .padding(.leading, -120)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 353, height: 701)
                        .background(.white)
                        .cornerRadius(30)
                        .shadow(color: .black.opacity(0.25), radius: 3, x: 0, y: 1)
                        .padding(.horizontal,0)
                        .padding(.top ,20)
                        .padding(.bottom ,0)
                    VStack{
                        Text(hotel.nome)
                            .font(
                                Font.custom("Rounded Mplus 1c", size: 36)
                                    .weight(.heavy)
                            )
                            .frame(width: 200, height: 50)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .minimumScaleFactor(0.4)
                        //.maximumScaleFactor(1.0)
                            .padding(.top,-260)
                            .padding(.horizontal, 0)
                        
                        
                        //Valor Total
                        //  let valorFormatado = String(format: "%.2f", valorTotal)
                        Text("Valor total: R$\(String(format: "%.2f", somaDosQuartos(quartos: dados.escolhaQuartos)))")
                            .font(
                                Font.custom("Poppin", size: 20)
                                
                                
                            )
                            .foregroundColor(.black)
                            .padding(.top,-220)
                            .padding(.leading, 0)
                        
                        Text("Formas de pagamento")
                            .font(
                                Font.custom("Poppins Regular", size: 21)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .frame(width: 267, alignment: .top)
                            .padding(.horizontal, 0)
                            .padding(.top, -130)
                            .padding(.leading, 0)
                        
                        
                        //Botão Apple pay
                        Button(action: { print("Botao Apple pay clicado")}){
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 198, height: 43)
                                .background(Color(red: 0, green: 0.65, blue: 0.76))
                                .cornerRadius(5)
                                .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
                        }
                        .padding(.top, -90)
                        .padding(.leading, 0)
                        
                        
                        Text("Apple Pay")
                            .font(
                                Font.custom("Poppins", size: 20)
                                    .weight(.heavy)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 109, height: 15, alignment: .center)
                            .padding(.top, -85)
                            .padding(.leading, 0)
                        
                        //Botão cartao de credito
                        Button(action: {
                            withAnimation { mostrarPopup = true }
                        }){
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 198, height: 43)
                                .background(Color(red: 0, green: 0.65, blue: 0.76))
                                .cornerRadius(5)
                                .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
                        }
                        .padding(.top, -40)
                        .padding(.leading, 0)
                        
                        
                        Text("Cartão de crédito")
                            .font(
                                Font.custom("Poppins", size: 20)
                                    .weight(.heavy)
                            )
                            .multilineTextAlignment(.center)
                        // .minimumScaleFactor(2)
                            .foregroundColor(.white)
                            .frame(width: 200, height: 15, alignment: .center)
                            .padding(.top, -35)
                            .padding(.leading, 0)
                        
                        
                        
                        
                        //Botão PIX
                        /*
                         Button(action: { print("Botao Pix clicado")}){
                         Rectangle()
                         .foregroundColor(.clear)
                         .frame(width: 198, height: 43)
                         .background(Color(red: 0, green: 0.65, blue: 0.76))
                         .cornerRadius(5)
                         .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
                         }
                         .padding(.top, 5)
                         .padding(.leading, 0)
                         
                         
                         Text("PIX")
                         .font(
                         Font.custom("Poppins", size: 20)
                         .weight(.heavy)
                         )
                         .multilineTextAlignment(.center)
                         // .minimumScaleFactor(2)
                         .foregroundColor(.white)
                         .frame(width: 170, height: 15, alignment: .center)
                         .padding(.top, -35)
                         .padding(.leading, 0)*/
                        
                        
                        
                        
                    }
                    VStack{
                        
                        Text("Para garantir sua estadia, basta informar um cartão de crédito. O pagamento será realizado diretamente no hotel.")
                            .font(
                                Font.custom("Poppins", size: 15)
                                    .weight(.medium)
                            )
                            .kerning(1.35)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.75, green: 0.33, blue: 0.09))
                            .frame(width: 285, height: 92, alignment: .top)
                        
                            .padding(.top, 335)
                            .padding(.leading, 0)
                    }
                    
                }
            }
            // Aplica um leve desfoque no fundo quando o popup está aberto
            .blur(radius: mostrarPopup ? 3 : 0)
            .disabled(mostrarPopup) // Impede cliques no fundo enquanto o popup estiver aberto
            
            // --- CAMADA 2: O POPUP ---
            if mostrarPopup {
                // Fundo escurecido atrás do popup
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation { mostrarPopup = false }
                    }
                
                // O Componente do Popup
                PopupCartao(mostrar: $mostrarPopup)
                    .transition(.scale(scale: 0.9).combined(with: .opacity))
                    .zIndex(1) // Garante que fique no topo
            }
        }
        .frame(width: 493, height: 852)
        
    }
}
