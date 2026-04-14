//
//  TelaExplorar.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//


import SwiftUI

struct TelaExplorar: View {
    
    @State private var textoPesquisa: String = ""
    
    var hoteis: [Hotel]
    
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
                
                Text("Verifique nossas opções de hotéis")
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(.cinzaTexto)
                    .opacity(0.8)
                    .padding(.top, -40)
                    .padding(.bottom, 0)
                
                ScrollView() {
                    VStack(spacing: 19){
                      
                        ForEach (hoteis) { hotel in
                            NavigationLink {
                                TelaHotel(hotel: hotel)
                            } label: {
                                HotelCard(hotel: hotel)
                            }
                        }
                        
                    }
                    .padding()
                    .padding(.horizontal, 10)
                    
                }
                .padding(.top, -20)
   
            
            }
        }
    }
}

#Preview {
    TelaExplorar(hoteis: hoteis)
}

