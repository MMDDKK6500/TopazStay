//
//  PopupQuarto.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 13/04/26.
//

import SwiftUI

struct PopupQuarto: View {
    var quarto: Quarto
    @Binding var mostrar: Bool
    @State private var quantidade = 1
    @Binding var menuInferiorMostrar: Bool
    
    @EnvironmentObject var dados: ObservableDados
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Imagem Superior
            Image(quarto.imagem)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .clipped()
            
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(quarto.nome)
                            .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 24))
                        Text("R$ \(String(format: "%.2f", quarto.valor))")
                            .font(Font.custom("Poppins-Medium", size: 20))
                    }
                    Spacer()
                    
                    // Seletor de quantidade
                    HStack(spacing: 0) {
                        Button("-") { if quantidade > 1 { quantidade -= 1 } }
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.cinzaTexto)
                        Text("\(quantidade)")
                            .frame(width: 30, height: 30)
                            .background(Color.gray.opacity(0.2))
                        Button("+") { quantidade += 1 }
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color.cinzaTexto)
                    }
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                }
                
                Text(quarto.descricao)
                    .font(Font.custom("Poppins-Regular", size: 14))
                
                // Comodidades
                VStack(alignment: .leading, spacing: 8) {
                    PopupIconRow(icon: "wifi", text: "Wi-Fi")
                    PopupIconRow(icon: "pawprint", text: "Permissão para animais")
                    PopupIconRow(icon: "tv", text: "TV Smart")
                    PopupIconRow(icon: "bathtub", text: "Banheira com Hidromassagem")
                }
                
                // Botão de ação
                Button(action: { withAnimation {
                    menuInferiorMostrar = true
                    mostrar = false
                    dados.escolhaQuartos.append(EscolhaQuarto(quarto: quarto, quantidade: quantidade))
                } }) {
                    Text("Adicionar a reserva")
                        .font(Font.custom("Poppins-Medium", size: 16))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(red: 0.0, green: 0.5, blue: 0.6))
                        .cornerRadius(12)
                }
                    
            }
            .padding(20)
        }
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 10)
        .padding(.horizontal, 25)
    }
}

struct PopupIconRow: View {
    var icon: String
    var text: String
    var body: some View {
        HStack {
            Image(systemName: icon).frame(width: 25)
            Text(text).font(Font.custom("Poppins-Regular", size: 14))
        }.foregroundColor(.secondary)
    }
}


#Preview {
    
    @Previewable @State var mostrar = true
    @Previewable @State var mostrarTelaInferior = false
    PopupQuarto(quarto: hoteis[0].quartos[0], mostrar: $mostrar, menuInferiorMostrar: $mostrarTelaInferior)
    
    
}
