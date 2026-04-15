//
//  CardEscolha.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 13/04/26.
//

import SwiftUI

struct CardEscolha: View {
    @State var escolhaQuarto: EscolhaQuarto
    
    @EnvironmentObject var dados: ObservableDados
    
    var body: some View {
        
       
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 320, height: 227)
            .background(Color.cinzaFiltro)
            .cornerRadius(5)
            .padding(.top, 10)
        ZStack{
            Text(escolhaQuarto.quarto.nome)
                .font(
                    Font.custom("Rounded Mplus 1c", size: 20)
                        .weight(.heavy)
                )
                .foregroundColor(.black)
                .frame(width: 218, height: 30, alignment: .topLeading)
                .padding(.top, -230)
                .padding(.leading, -60)
            
            Text("R$ \(String(format: "%.2f", escolhaQuarto.quarto.valor))") // preço variável
                .font(
                    Font.custom("Poppins-Medium", size: 20)
                )
                .foregroundColor(.black)
                .frame(width: 218, height: 30, alignment: .topLeading)
                .padding(.top, -200)
                .padding(.leading, -60)
            
            HStack(spacing: 0) {
                Button("-") {
                    if escolhaQuarto.quantidade > 1 {
                        escolhaQuarto.quantidade -= 1
                    }
                }
                .frame(width: 30, height: 30)
                .foregroundColor(.cinzaTexto)
                
                Text("\(escolhaQuarto.quantidade)")
                    .frame(width: 30, height: 30)
                    .background(Color.gray.opacity(0.2))
                
                Button("+") {
                    escolhaQuarto.quantidade += 1
                }
                .frame(width: 30, height: 30)
                .foregroundColor(.cinzaTexto)
            }
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            .padding(.top, -220)
            .padding(.leading, 180)
            
            VStack{
                Image(systemName: "wifi")
                    .frame(width: 218, height: 30, alignment: .center)
                    .foregroundColor(Color.cinzaTexto)
                    .frame(width: 36, height: 22, alignment: .topLeading)
                    .padding(.top, -130)
                    .padding(.leading, -230)
               
                Text("Wi-Fi")
                  .font(Font.custom("Poppins", size: 12))
                  .foregroundColor(Color.cinzaTexto)
                  .frame(width: 36, height: 22, alignment: .topLeading)
                  .padding(.top, -130)
                  .padding(.leading, -100)
                
                Image(systemName: "pawprint")
                    .frame(width: 218, height: 30, alignment: .center)
                    .foregroundColor(Color.cinzaTexto)
                    .frame(width: 36, height: 22, alignment: .topLeading)
                    .padding(.top, -120)
                    .padding(.leading, -230)
               
                Text("Permissão para animais")
                  .font(Font.custom("Poppins", size: 12))
                  .foregroundColor(Color.cinzaTexto)
                  .frame(width: 336, height: 22, alignment: .topLeading)
                  .padding(.top, -120)
                  .padding(.leading, 140)
                
                Image(systemName: "tv")
                    .frame(width: 218, height: 30, alignment: .center)
                    .foregroundColor(Color.cinzaTexto)
                    .frame(width: 36, height: 22, alignment: .topLeading)
                    .padding(.top, -106)
                    .padding(.leading, -230)
               
                Text("Tv Smart")
                  .font(Font.custom("Poppins", size: 12))
                  .foregroundColor(Color.cinzaTexto)
                  .frame(width: 336, height: 22, alignment: .topLeading)
                  .padding(.top, -110)
                  .padding(.leading, 140)
                
                Image(systemName: "bathtub")
                    .frame(width: 218, height: 30, alignment: .center)
                    .foregroundColor(Color.cinzaTexto)
                    .frame(width: 36, height: 22, alignment: .topLeading)
                    .padding(.top, -96)
                    .padding(.leading, -230)
               
                Text("Banheira com hidromassagem")
                  .font(Font.custom("Poppins", size: 12))
                  .foregroundColor(Color.cinzaTexto)
                  .frame(width: 336, height: 22, alignment: .topLeading)
                  .padding(.top, -100)
                  .padding(.leading, 140)
                Button(action: {
                    dados.escolhaQuartos.removeAll(where: { $0.quarto.id == self.escolhaQuarto.quarto.id })
                }){
                    Text("Remover")
                        .font(Font.custom("Poppins", size: 13))
                        .foregroundColor(Color.laranjaEscuroEstrela)
                }
                  .padding(.top, -80)
                  .padding(.leading, 220)
               
            }.padding(.top, -25)
            
        }
    }
}
#Preview {
    CardEscolha(escolhaQuarto: EscolhaQuarto(quarto: hoteis[0].quartos[0], quantidade: 2))
}
