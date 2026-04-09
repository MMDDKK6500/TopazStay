//
//  TelaExplorar.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//


import SwiftUI

struct TelaExplorar: View {
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
            
                //MENU
                VStack {
                    VStack(spacing: 20) {
                        //barra de pesquisa
                        HStack {
                            Text("Pesquisar hotéis")
                                .font(.custom("Poppins-Regular", size: 15))
                                .foregroundColor(.cinzaTexto.opacity(0.6))
                            
                            Spacer()
                            
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 15))
                                .foregroundColor(.cinzaTexto.opacity(0.6))
                        }
                        
                        .padding()
                        .frame(height: 50)
                        .background(Color.white)
                        .cornerRadius(25)
                        .padding(.horizontal, 20)
                        
                        //filtros
                        HStack (spacing: 10) {
                            Text("Local")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                                .background(Color.black.opacity(0.2)) // Um tom de azul mais escuro
                                .cornerRadius(20)
                            
                            Text("Ida - Volta")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                                .background(Color.black.opacity(0.2)) // Um tom de azul mais escuro
                                .cornerRadius(20)
                            
                            Text("Categoria")
                                .font(.custom("Poppins-Medium", size: 14))
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 40)
                                .background(Color.black.opacity(0.2)) // Um tom de azul mais escuro
                                .cornerRadius(20)
 
                        }
                        .padding(.horizontal, 20)
                        
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    .background(Color.menuInferiorSuperior)
                  
                
                Text(" Verifique nossas opções de hotéis")
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(.cinzaTexto)
                    .opacity(0.8)
                
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
   
            
            }
        }
    }
}

#Preview {
    TelaExplorar()
}

