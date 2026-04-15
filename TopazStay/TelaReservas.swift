//
//  TelaReservas.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 10/04/26.
//

import SwiftUI

enum selected: String, CaseIterable, Identifiable {
    case ativas, anteriores
    var id: Self { self }
}


//Tela de reservas
struct TelaReservas: View {
    
    @State var pesquisa: String = ""
    var reservas: [Reserva]
    
    @State private var selectedPeriod: selected = .ativas
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                MenuSemBarraPesquisa()
                    .ignoresSafeArea()
                Text("Reservas")
                    .font(.custom("Poppins-Regular", size: 40))
                    .padding(.leading, 20)
                    .foregroundColor(.cinzaTexto.opacity(0.7))
                
                
                Picker("Periodo", selection: $selectedPeriod) {
                    Text("Ativas").tag(selected.ativas)
                    Text("Anteriores").tag(selected.anteriores)
                }
                .pickerStyle(.segmented)
                .padding(.trailing, 200)
                .padding(.leading, 15)
                
                ForEach(reservas) { reserva in
                    if (selectedPeriod == .ativas) {
                        if (Calendar.current.isDate(reserva.dataFim, equalTo: Date(), toGranularity: .day) || reserva.dataFim > Date()) {
                            ReservaCard(reserva: reserva)
                        }
                    } else {
                        if (reserva.dataFim <= Date() && !Calendar.current.isDate(reserva.dataFim, equalTo: Date(), toGranularity: .day)) {
                            ReservaCard(reserva: reserva)
                        }
                    }
                }
                
                Spacer()
                
            }
            .ignoresSafeArea(edges: .top)
            .background(
                LinearGradient(
                    colors: [Color.gradienteAzul, Color.white],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
        }
        .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    
    TelaReservas(reservas: reservas)
}
