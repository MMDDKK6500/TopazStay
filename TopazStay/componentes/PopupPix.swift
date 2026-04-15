//
//  PopupPagamento.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//

import SwiftUI


// Popup de pagamento via pix, que leva devolta para a tela de reservas
struct PopupPix: View {
    
    @Binding var mostrar: Bool
    @State public var mostrarPopupSucesso: Bool = false
    
    @EnvironmentObject var dados: ObservableDados
    
    var body: some View {
        Group{
            
            if mostrarPopupSucesso == true{
                
                ReservaConfirmada( mostrarPopupSucesso: $mostrarPopupSucesso)
                    .transition(.asymmetric(
                        insertion: .opacity.combined(with: .scale(scale: 0.95)),
                        removal: .opacity.combined(with: .scale(scale: 0.95))
                    ))
            }else {
                
                VStack {
                    Text("Leia o QR-Code")
                        .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 22))
                        .padding(.top, 15)
                    
                    Button(action: {
                        withAnimation {
                            dados.escolhaQuartos = []
                            mostrarPopupSucesso = true
                        }
                    }) {Image("qrcode")
                            .resizable()
                            .scaledToFit()
                            .containerRelativeFrame(.horizontal) { size, axis in
                                size * 0.5
                            }
                    }
                    
                    Button(action: {
                        withAnimation {
                            dados.escolhaQuartos = []
                            mostrarPopupSucesso = true
                        }
                    }) {
                        Text("Copiar código pix")
                            .font(Font.custom("Poppins", size: 16))
                            .underline()
                            .foregroundStyle(Color.black)
                    }
                    
                    Button(action: {
                        withAnimation {
                            mostrar = false
                        }
                        
                    }){
                        Text("Cancelar")
                            .foregroundStyle(Color.white)
                            .font(Font.custom("Poppins-Medium", size: 15))
                            .padding(15)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
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
        }}
}

func doSomething() {
    
}

#Preview {
    
    @Previewable @State var mostrar = true
   
    
    PopupPix(mostrar: $mostrar)
}
