//
//  TelaExplorar.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//


import SwiftUI

struct TelaExplorar: View {
    
    @State private var textoPesquisa: String = ""
    @State private var mostrarLocal: Bool = false
    @State private var mostrarData: Bool = false
    @State private var mostrarCategoria: Bool = false
    
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
                    
                MenuSuperior(
                    textoPesquisa: $textoPesquisa,
                    mostrarFiltroCategoria: $mostrarCategoria,
                    mostrarFiltroData: $mostrarData,
                    mostrarFiltroLocal: $mostrarLocal
                )
                .ignoresSafeArea(edges: .top)
                
                Text("Verifique nossas opções de hotéis")
                    .font(.custom("Poppins-Regular", size: 18))
                    .foregroundColor(.cinzaTexto)
                    .opacity(0.8)
                    .padding(.top, 22)
                
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
                //.padding(.top, -20)
            }
            .blur(radius: (mostrarLocal || mostrarData || mostrarCategoria) ? 3 : 0)
            .ignoresSafeArea(edges: .top)
            
            if mostrarLocal || mostrarData || mostrarCategoria {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        withAnimation {
                            mostrarLocal = false
                            mostrarData = false
                            mostrarCategoria = false
                        }
                    }
            }
            
            if mostrarLocal {
                Local(estaApresentado: $mostrarLocal)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .zIndex(1) 
            }
            
            if mostrarData {
                ColetarData(estaApresentado: $mostrarData)
                    .transition(.scale.combined(with: .opacity))
                    .zIndex(1)
            }
            
            if mostrarCategoria {
                Categoria(estaApresentado: $mostrarCategoria)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                    .zIndex(1)
            }
        }
    }
}

#Preview {
    TelaExplorar(hoteis: hoteis)
}

