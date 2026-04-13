//
//  ComentarioCard.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 10/04/26.
//

import SwiftUI

struct ComentarioCard: View {
    
    var comentario: Comentario
    
    var body: some View {
        VStack {
            HStack {
                //Imagem
                VStack {
                    Image(comentario.foto)
                        .resizable()
                        .scaledToFit()
                        .clipped()
                        .containerRelativeFrame(.vertical) {
                            size, axis in
                            size * 0.12
                        }
                        .containerRelativeFrame(.horizontal) {
                            size, axis in
                            size * 0.12
                        }
                        .clipShape(
                            Circle()
                        )
                    Spacer()
                }
                .padding(.top, 0)
                
                //Texto + Avaliação
                VStack {
                    
                    //Nome + Avaliação
                    HStack {
                        Text(comentario.nome)
                            .font(Font.custom("Rounded Mplus 1c Medium", size: 20))
                        Spacer()
                        
                        HStack(spacing: 0) {
                            ForEach(0..<comentario.avaliacao, id: \.self) { _ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(.laranjaEscuroEstrela)
                                    .font(.system(size: 20))
                            }
                        }
                    }
                    HStack {
                        Text(comentario.texto)
                            .font(Font.custom("Poppins-Regular", size: 15))
                        Spacer()
                    }
                    Spacer()
                    
                }
                .padding(.top, 0)
            }
            .padding(.top, 0)
            .padding(.bottom, 5)
            Rectangle()
                .foregroundStyle(.black.opacity(0.5))
                .frame(height: 1)
        }
        .padding(.top, 0)
        .padding()
        
    }
}

#Preview {
    ComentarioCard(comentario: Comentario(
        foto: "logo",
        nome: "Mario",
        avaliacao: 4,
        texto: "bão de msdsadsadsasadsadsadsadasdsadsadsadsadsadasdsadsadsadasdais"
    ))
}
