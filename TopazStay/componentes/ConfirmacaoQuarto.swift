//
//  ConfirmacaoQuarto.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 10/04/26.
//

import SwiftUI

struct ConfirmacaoQuarto: View {
    var quarto: Quarto
    var body: some View {
        ZStack{
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 299, height: 74)
              .background(Color.cinzaData)
              .cornerRadius(5)
              .padding(.top,0)
              .padding(.leading, 0)
            
            
            VStack{
                Text("\(quarto.nome)") // nome do quarto
                  .font(
                    Font.custom("Rounded Mplus 1c", size: 20)
                      .weight(.heavy)
                  )
                //fixar o texto e tamanho no canto do componente
                  .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)

                  .frame(width: 260, height: 40)
                  .multilineTextAlignment(.trailing)
                  .foregroundColor(.black)
                  .padding(.top, 5)
                  .padding(.leading, 0)
                
                Text("Valor do quarto R$ \(String(format: "%.2f", quarto.valor)) ") // preço
                  .font(Font.custom("Poppins", size: 15))
                  .foregroundColor(Color.cinzaTexto)
                  .frame(width: 276, alignment: .topLeading)
                  .padding(.top, -15)
                
                Text("x1") // quantidade
                  .font(Font.custom("Poppins", size: 15))
                  .foregroundColor(Color.cinzaTexto)
                  .frame(width: 13, alignment: .topLeading)
                  .padding(.top, -55)
                  .padding(.leading, 250)
            }
        }
        
       
      
    }
}

#Preview {
    ConfirmacaoQuarto(quarto: Quarto(
        nome: "Padrão",
        descricao: "Descrição genial",
        maxPessoas: 2,
        valor: 350,
        imagem: "imagens/quartos/8"
    ))
    
}
