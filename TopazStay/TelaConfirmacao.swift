//
//  TelaConfirmacao.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 08/04/26.
//
import SwiftUI

struct TelaConfirmacao: View {
    
    @State private var nomeHotel: String = "NomeHotelVAR"
    var body: some View {
        // @State var moverCirculo = false
        // Vstack{   Image(.logo)}
        
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
                
          
                /*Text(nomeHotel)
                .font(
                    Font.custom("Rounded MPlus 1c", size: 30)
                        .weight(.heavy)
                )
                .padding(.vertical,-240)
                .padding(.leading, -110)*/
                    /*Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 123, height: 43)
                      .background(Color(red: 0, green: 0.65, blue: 0.76))
                      .cornerRadius(5)
                      .padding(.leading, -140)
                      .padding(.bottom, -240)*/
                
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
