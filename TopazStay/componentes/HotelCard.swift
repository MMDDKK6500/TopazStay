//
//  HotelCard.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//

import SwiftUI

struct HotelCard: View {
    @State var hotel: Hotel

    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundStyle(Color.white)
                .containerRelativeFrame(.vertical) { size, axis in
                    size * 0.32
                }
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                .overlay(
                    HStack {
                        Spacer()
                        Image(hotel.imagem)
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .containerRelativeFrame(.vertical) { size, axis in
                                size * 0.32
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
                        Text(hotel.nome)
                            .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 23))
                            .foregroundColor(.black)
                    }
                    Text(hotel.categoria.rawValue)
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(.cinzaTexto)
                    
                    Spacer().frame(height: 5)
                    
                    Text(hotel.local)
                        .font(.custom("Poppins-Regular", size: 15))
                        .foregroundStyle(Color.black)
                    
                    // Estrelas
                    HStack(spacing: 0) {
                        ForEach(0..<hotel.avaliacao, id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.laranjaEscuroEstrela)
                                .font(.system(size: 20))
                        }
                    }
                    //.padding(.leading, -3)
                    
                    HStack {
                        Text("A partir de R$")
                            .font(.custom("Poppins-Regular", size: 14))
                            .foregroundStyle(Color.black)
                        Text(String(format: "%.2f", hotel.preco))
                            .font(.custom("Poppins-Medium", size: 14))
                            .foregroundStyle(Color.black)
                    }
                    .padding(.leading, 3)
                }
                .padding(.leading, 20)
            }
        }
    }
}
