//
//  Categoria.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 10/04/26.
//

import SwiftUI




struct Categoria: View {
    let categoriaHotel = ["Apartamento", "Chalé", "Hotel", "Hotel-Fazenda", "Pousada", "Resort"] // Adicione aqui os elementos
    @Binding var estaApresentado: Bool
    
    var body: some View {
        
        ZStack {
            Text("Selecione a categoria")
              .font(
                Font.custom("Poppins Medium", size: 15)
                  .weight(.bold)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(Color.botaoFiltros)
              .frame(width: 287, height: 19, alignment: .center)
              .padding(.top, -160)
            
            Text("Escolha o tipo de hospedagem desejado")
              .font(Font.custom("Poppins", size: 12))
              .kerning(0.12)
              .multilineTextAlignment(.center)
              .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38).opacity(0.8))
              .frame(width: 192, height: 52, alignment: .top)
              .padding(.top, -140)
            
            ScrollView(.vertical){
                VStack{
                    ForEach(categoriaHotel, id: \.self){ categoriaHotel in
                        Button(action: {
                            print("Botao \(categoriaHotel) clicado ")
                            withAnimation {
                                estaApresentado = false
                            }
                        }){
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 242, height: 40)
                                .background(Color.botaoFiltros)
                                .cornerRadius(10)
                                .shadow(color: .black.opacity(0.35), radius: 2, x: 0, y: 2)
                        }
                        ZStack{
                            Text(categoriaHotel)
                              .font(Font.custom("Poppins", size: 15))
                              .multilineTextAlignment(.center)
                              .foregroundColor(.white)
                              .frame(width: 150, height: 19, alignment: .center)
                              .padding(.top, -40)
                        }
                      
                         // .padding(.top, 30)
                        
                      
                           
                        
                    }
                }
                .scrollTargetLayout()
            }
           // .frame(height: 250)
            .frame(width: 287, height: 250)
            .padding(.top, 80)
        }
        .frame(width: 287, height: 375)
        .background(Color(red: 0.95, green: 0.95, blue: 0.95))
        .cornerRadius(10)
    }
    
    
}

#Preview {
    @Previewable @State var mostrar = true
    Categoria(estaApresentado: $mostrar)
}
