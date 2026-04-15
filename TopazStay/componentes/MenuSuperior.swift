//
//  MenuSuperior.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 10/04/26.
//

import SwiftUI

struct MenuSuperior: View {
    
    @Binding var textoPesquisa: String
    @Binding var mostrarFiltroCategoria: Bool
    @Binding var mostrarFiltroData: Bool
    @Binding var mostrarFiltroLocal: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            //barra de pesquisa
            HStack {
                TextField("", text: $textoPesquisa, prompt: Text("Pesquisar hotéis").foregroundColor(.cinzaTexto.opacity(0.4)))
                    .font(.custom("Poppins-Regular", size: 15))
                    .foregroundColor(.cinzaTexto.opacity(0.7))
                    .submitLabel(.search) // Muda o botão "Retorno" do teclado para "Pesquisar"
                    .padding(.horizontal, 10)
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 15))
                    .foregroundColor(.cinzaTexto.opacity(0.4))
                    .padding(.horizontal, 10)
            }
            .padding()
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(25)
            .padding(.horizontal, 20)
            
            //filtros
            HStack (spacing: 10) {
                //BotaoFiltro(titulo: "Local")
                //BotaoFiltro(titulo: "Ida - Volta")
                //BotaoFiltro(titulo: "Categoria")
                // Botão Local
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
struct BotaoFiltro: View {
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


#Preview {
    @Previewable @State var texto = ""
    @Previewable @State var local = false
    @Previewable @State var data = false
    @Previewable @State var categoria = false

    MenuSuperior(
        textoPesquisa: $texto,
        mostrarFiltroCategoria: $categoria,
        mostrarFiltroData: $data,
        mostrarFiltroLocal: $local
    )
}
