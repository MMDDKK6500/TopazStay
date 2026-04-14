//
//  QuartoCard.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 09/04/26.
//

//
//  QuartoCard.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 09/04/26.
//

import SwiftUI

struct QuartoCard: View {
    
    var quarto: Quarto
    // Estado que controla se o card está aberto ou fechado
    @State private var estaExpandido: Bool = false
    var aoSelecionar: () -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            if !estaExpandido {
                // --- FORMATO NORMAL (Seu código original) ---
                ZStack(alignment: .leading) {
                    Rectangle()
                        .foregroundStyle(Color.white)
                        .containerRelativeFrame(.vertical) { size, axis in
                            size * 0.15
                        }
                        .cornerRadius(12)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        .overlay(
                            HStack {
                                Spacer()
                                Image(quarto.imagem)
                                    .resizable()
                                    .scaledToFill()
                                    .clipped()
                                    .containerRelativeFrame(.vertical) { size, axis in
                                        size * 0.15
                                    }
                                    .containerRelativeFrame(.horizontal) { size, axis in
                                        size * 0.35
                                    }
                                    .clipShape(
                                        UnevenRoundedRectangle(
                                            topLeadingRadius: 0,
                                            bottomLeadingRadius: 0,
                                            bottomTrailingRadius: 12,
                                            topTrailingRadius: 12
                                        )
                                    )
                            }
                        )
                    HStack {
                        VStack(alignment: .leading, spacing: 5) {
                            HStack {
                                Text(quarto.nome)
                                    .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 20))
                                    .foregroundColor(.black)
                            }
                            Label("até " + String(quarto.maxPessoas) + " pessoas", systemImage: "person.2")
                                .font(Font.custom("Poppins-Regular", size: 15))
                                .foregroundColor(.black)
                            
                            Text("R$ " + String(format: "%.2f", quarto.valor) + "")
                                .font(Font.custom("Poppins-Medium", size: 15))
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 20)
                    }
                }
            } else {
                // --- FORMATO ESTENDIDO (Novo design com botão e descrição) ---
                VStack(alignment: .leading, spacing: 0) {
                    // Imagem no topo ocupando a largura total
                    Image(quarto.imagem)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 180)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .clipShape(
                            UnevenRoundedRectangle(
                                topLeadingRadius: 12,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 12
                            )
                        )
                    
                    VStack(alignment: .leading, spacing: 12) {
                        // Título, Preço e Botão Selecionar
                        HStack(alignment: .top) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(quarto.nome)
                                    .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 22))
                                    .foregroundColor(.black)
                                
                                Text("R$ " + String(format: "%.2f", quarto.valor))
                                    .font(Font.custom("Poppins-Medium", size: 20))
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            // Botão azul ciano do design
                            Button(action: { aoSelecionar() }) {
                                Text("Selecionar")
                                    .font(Font.custom("Poppins-Medium", size: 14))
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 20)
                                    .padding(.vertical, 10)
                                    .background(Color(red: 0.0, green: 0.7, blue: 0.8))
                                    .cornerRadius(8)
                            }
                        }
                        
                        // Descrição completa
                        Text(quarto.descricao)
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(.cinzaTexto)
                            .lineLimit(nil)
                    }
                    .padding(20)
                }
                .background(Color.white)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 3)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        // Gesto que faz o "vai e vem" ao clicar no card
        .onTapGesture {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                estaExpandido.toggle()
            }
        }
    }
}

#Preview {
    QuartoCard(
        quarto: Quarto(
            nome: "Padrão",
            descricao: "O ambiente é bem organizado, com decoração moderna e iluminação aconchegante.",
            maxPessoas: 2,
            valor: 350,
            imagem: "imagens/hoteis/3"
        ),
        aoSelecionar: {
            print("Botão clicado no Preview!")
        }
    )
}
