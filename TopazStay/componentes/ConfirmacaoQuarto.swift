//
//  ConfirmacaoQuarto.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 10/04/26.
//

import SwiftUI

struct ConfirmacaoQuarto: View {
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
                Text("Quarto Standard") // nome do quarto
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
                
                Text("Valor do quarto R$ 350,00 ") // preço
                  .font(Font.custom("Poppins", size: 15))
                  .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
                  .frame(width: 276, alignment: .topLeading)
                  .padding(.top, -15)
                
                Text("x1") // quantidade
                  .font(Font.custom("Poppins", size: 15))
                  .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
                  .frame(width: 13, alignment: .topLeading)
                  .padding(.top, -55)
                  .padding(.leading, 250)
            }
        }
        
       
      
    }
}

#Preview {
    ConfirmacaoQuarto()
}
