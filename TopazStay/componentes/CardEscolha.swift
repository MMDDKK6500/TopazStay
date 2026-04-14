//
//  CardEscolha.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 13/04/26.
//

import SwiftUI

struct CardEscolha: View {
    @State public var quantidade: Int = 1
    var quarto: Quarto
    
    var body: some View {
        
       
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 320, height: 227)
            .background(Color.cinzaFiltro)
            .cornerRadius(5)
            .padding(.top, 10)
        ZStack{
            Text(quarto.nome)
                .font(
                    Font.custom("Rounded Mplus 1c", size: 20)
                        .weight(.heavy)
                )
                .foregroundColor(.black)
                .frame(width: 218, height: 30, alignment: .topLeading)
                .padding(.top, -230)
                .padding(.leading, -60)
            
            Text("R$ \(String(format: "%.2f", quarto.valor))") // preço variável
                .font(
                    Font.custom("Poppins-Medium", size: 20)
                )
                .foregroundColor(.black)
                .frame(width: 218, height: 30, alignment: .topLeading)
                .padding(.top, -200)
                .padding(.leading, -60)
            
            Button(action: {
                if  quantidade >= 1 { quantidade -= 1}
                print("Botao subtrair clicado")}){
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 50, height: 35)
                    .background(Color.cinzaOpcaoCartao)
                    .cornerRadius(10)
            }
              .padding(.top, -220)
              .padding(.leading, 130)
            Text("-")
                .font(
                    Font.custom("Poppins", size: 24)
                        .weight(.heavy)
                )
                .foregroundColor(.cinzaTexto)
                .frame(width: 218, height: 30, alignment: .topLeading)
                .padding(.top, -220)
                .padding(.leading, 323)
            Button(action: {
                quantidade += 1
                print("Botao somar clicado")}){
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 50, height: 35)
                    .background(Color.cinzaOpcaoCartao)
                    .cornerRadius(10)
            }
              .padding(.top, -220)
              .padding(.leading, 240)
            Text("+")
                .font(
                    Font.custom("Poppins", size: 24)
                        .weight(.heavy)
                )
                .foregroundColor(.cinzaTexto)
                .frame(width: 218, height: 30, alignment: .topLeading)
                .padding(.top, -220)
                .padding(.leading, 445)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 35, height: 35)
              .background(Color.iconeCartaoCreditoExp)
              .cornerRadius(10)
              .padding(.top, -220)
              .padding(.leading, 180)
            Text(String(quantidade))
                .font(
                    Font.custom("Poppins", size: 24)
                        .weight(.heavy)
                )
                .foregroundColor(.white)
                .frame(width: 218, height: 30, alignment: .center)
                .padding(.top, -217)
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
                Button(action: { print("Botao remover clicado")}){
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
    CardEscolha(quarto: hoteis.first!.quartos.first!)
}
