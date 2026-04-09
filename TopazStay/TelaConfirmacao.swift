//
//  TelaConfirmacao.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 08/04/26.
//
import SwiftUI

struct TelaConfirmacao: View {
    
    @State public var nomeHotel: String = "NomeHotelVAR"
    @State public var valorTotal: Double = 1500.00
 //   @State public var dataIDA: ColetarData.dataSelecionada
   
    var body: some View {
        
        ZStack {
            
          
                Text("Confirmar reserva")
                .font(
                    Font.custom("Poppins Regular", size: 30)
                )
                .foregroundColor(.cinzaTexto)
                .opacity(0.7)
                .padding(.top,-390)
                .padding(.leading, -0)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 353, height: 701)
                .background(.white)
                .cornerRadius(30)
                .shadow(color: .black.opacity(0.25), radius: 3, x: 0, y: 1)
                .padding(.horizontal,0)
                .padding(.top ,20)
                .padding(.bottom ,0)
            VStack{
                Text(nomeHotel)
                  .font(
                    Font.custom("Rounded Mplus 1c", size: 36)
                      .weight(.heavy)
                  )
                  .frame(width: 200, height: 50)
                  .multilineTextAlignment(.center)
                  .foregroundColor(.black)
                  .minimumScaleFactor(0.4)
                  //.maximumScaleFactor(1.0)
                  .padding(.vertical,-320)
                  .padding(.horizontal, 0)
                
                
                //Valor Total
              //  let valorFormatado = String(format: "%.2f", valorTotal)
                Text("Valor total: R$\(String(format: "%.2f", valorTotal))")
                .font(
                    Font.custom("Poppin", size: 20)
                )
                .foregroundColor(.black)
               
                .padding(.top,-280)
                .padding(.leading, 0)
                
                Text("09/11/2026 - 13/11/2026")
                  .font(
                    Font.custom("Poppins", size: 20)
                      .weight(.medium)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38).opacity(0.9))
                .padding(.top,-250)
                .padding(.leading, 0)
                
            
       /*
        Text("Inicio: \(dataIDASelecionada.formatted(date: .numeric, time: .omitted))")
        */
                
            }
            
        }
        .frame(width: 493, height: 852)
        .background(
          LinearGradient(
            stops: [
                Gradient.Stop(color: Color(.gradienteAzul), location: 0.00),
              Gradient.Stop(color: .white, location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
          )
        )
    }
}


#Preview {
    TelaConfirmacao()
}
