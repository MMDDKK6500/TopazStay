//
//  ReservaConfirmada.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 14/04/26.
//

import SwiftUI

struct ReservaConfirmada: View {
    
    @Binding var mostrarPopupSucesso: Bool
    
    var body: some View {
        VStack {
            Text("Reserva Confirmada!")
                .font(Font.custom("Poppins-Medium", size: 20))
                .padding(.bottom, 15)
            
            /*
             NavigationLink {
                 ContentView(selectTab: .reservas)
                     .navigationBarBackButtonHidden(true)
             }label: {
                     
             */
             
            NavigationLink {
                ContentView(selectTab: .reservas)
                    .navigationBarBackButtonHidden(true)
            }label: {
                Text("OK")
                    .font(Font.custom("Poppins-Regular", size: 20))
                    .foregroundStyle(Color.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 30)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.bordaCartaoBotaoPopup)
                    )
            }}
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
        )
        
        
    }
}

#Preview {
    @Previewable @State var mostrarPopupSucesso: Bool = true
    ZStack {
        Color.gray.ignoresSafeArea()
        ReservaConfirmada(mostrarPopupSucesso: $mostrarPopupSucesso)
    }
}
