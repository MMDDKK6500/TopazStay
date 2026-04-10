//
//  TelaExplorar.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//


import SwiftUI

struct TelaExplorar: View {
    
    @State private var textoPesquisa: String = ""
    
    var body: some View {
        ZStack {
            //Fundo em gradiente
            LinearGradient(
                gradient: Gradient(colors: [Color.gradienteAzul, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
        
            //Conteúdo de tela
            VStack() {
                    
                MenuSuperior(textoPesquisa: $textoPesquisa)
                
                Text(" Verifique nossas opções de hotéis")
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(.cinzaTexto)
                    .opacity(0.8)
                    .padding(.top, -40)
                    .padding(.bottom, 0)
                
                ScrollView() {
                    VStack(spacing: 19){
                      
                        HotelCard(
                            nome: "Hotel Palace",
                            categoria: "Hotel",
                            localizacao: "São Paulo - Jardins",
                            estrelas: 5,
                            preco: "R$ 350,00",
                            imagem: "imagens/hoteis/6"
                        )
                        
                        HotelCard(
                            nome: "Boutique Hotel",
                            categoria: "Pousada",
                            localizacao: "São Paulo - Jardins",
                            estrelas: 5,
                            preco: "R$ 350,00",
                            imagem: "imagens/hoteis/7"
                        )
                        
                        HotelCard(
                            nome: "Golden Rio",
                            categoria: "Pousada",
                            localizacao: "São Paulo - Jardins",
                            estrelas: 5,
                            preco: "R$ 350,00",
                            imagem: "imagens/hoteis/10"
                        )
                        
                    }
                    .padding()
                    
                }
                .padding(.top, -20)
   
            
            }
        }
    }
}

#Preview {
    TelaExplorar()
}

