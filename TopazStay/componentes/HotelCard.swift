//
//  HotelCard.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//

import SwiftUI

struct HotelCard: View {
    var nome: String
    var categoria: String
    var localizacao: String
    var estrelas: Int
    var preco: String
    var imagem: String

    var body: some View {
        HStack {
            // Parte do texto
            VStack(alignment: .leading, spacing: 4) {
                Text(nome)
                    .font(.custom("Rounded Mplus 1c ExtraBold", size: 23))
                
                Text(categoria)
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(.cinzaTexto)
                
                Spacer().frame(height: 5)
                
                Text(localizacao)
                    .font(.custom("Poppins-Regular", size: 15))
                
                // Estrelas
                HStack(spacing: 0) {
                    ForEach(0..<estrelas, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.laranjaEscuroEstrela)
                            .font(.system(size: 20))
                    }
                }
                
                HStack {
                    Text("A partir de")
                        .font(.custom("Poppins-Regular", size: 15))
                    Text(preco)
                        .font(.custom("Poppins-Medium", size: 15))
                }
                .padding(5)
            }
            .padding(.all, 15)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            // Imagem
            Image(imagem)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 148, height: 159)
        }
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}
