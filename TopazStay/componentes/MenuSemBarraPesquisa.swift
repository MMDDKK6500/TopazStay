//
//  MenuSemBarraPesquisa.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 13/04/26.
//

import SwiftUI

struct MenuSemBarraPesquisa: View {
    
    @Binding var mostrarFiltroCategoria: Bool
    @Binding var mostrarFiltroData: Bool
    @Binding var mostrarFiltroLocal: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            
            //filtros
            HStack (spacing: 10) {
                Button(action: {
                    withAnimation { mostrarFiltroLocal = true }
                }) {
                    BotaoFiltro(titulo: "Local")
                }
                
                // Botão Data
                Button(action: {
                    withAnimation { mostrarFiltroData = true }
                }) {
                    BotaoFiltro(titulo: "Ida - Volta")
                }
                
                // Botão Categoria
                Button(action: {
                    withAnimation { mostrarFiltroCategoria = true }
                }) {
                    BotaoFiltro(titulo: "Categoria")
                }
            }
            .padding(.horizontal, 20)
            
        }
        .padding(.top, 80)
        .padding(.bottom, 30)
        .padding(.horizontal, 10)
        .background(Color.menuInferiorSuperior)
        .clipShape(UnevenRoundedRectangle(bottomLeadingRadius: 30, bottomTrailingRadius: 30))
        .ignoresSafeArea(edges: .top)
        .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 5)
    }
}

// Sub-componente interno para os botões de filtro
struct BotaoFiltro2: View {
    let titulo: String
    
    var body: some View {
        Text(titulo)
            .font(.custom("Poppins-Medium", size: 14))
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 40)
            .background(Color.black.opacity(0.2))
            .cornerRadius(20)
    }
}


#Preview{
    @Previewable @State var local = false
    @Previewable @State var data = false
    @Previewable @State var categoria = false

    MenuSemBarraPesquisa(
        mostrarFiltroCategoria: $categoria,
        mostrarFiltroData: $data,
        mostrarFiltroLocal: $local
    )
}
