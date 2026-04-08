//
//  TelaCadastro.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 08/04/26.
//

// safeAreaInset ,  comando para não passar de areas seguras de diferentes dispositivos
//ScrollView

import SwiftUI

struct TelaCadastro: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var comfirmPW: String = ""
    var body: some View {
        // @State var moverCirculo = false
       // Vstack{   Image(.logo)}
        VStack {
            Image(.logo)
                .padding(.top,40)
         
                
            // campo de confirmação de senha
            Text("Criar conta")
                .font(
                    Font.custom("Poppins-Medium", size: 30)
                        .weight(.heavy)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .frame(width: 267, alignment: .top)
               //  .position(x: 145, y: 70)
               // .padding(.horizontal, -40)
                .padding(.vertical,-340)
                .padding(.leading, -110)
            
            Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 353, height: 40)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
                    // .position(x: 200, y: 455)
                    .padding(.horizontal, 0)
                    .padding(.top, 40)
            TextField("Nome completo", text: $name)
                .textFieldStyle(.automatic) // Adds a visible border
                            .font(
                                Font.custom("Poppins", size: 15)
                                    .weight(.heavy)
                            )
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .frame(width: 340,alignment: .top)
                            //.position(x: 200, y: 440)
                            .padding(.horizontal, 0)
                            .padding(.top, -40)
            
            // campo de confirmação de senha
            Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 353, height: 40)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
            
                    //.position(x: 200, y: 515)
            TextField("E-Mail", text: $email)
                .textFieldStyle(.automatic) // Adds a visible border
                            .font(
                                Font.custom("Poppins", size: 15)
                                    .weight(.heavy)
                            )
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .frame(width: 340,alignment: .top)
                            //.position(x: 200, y: 500)
                            .padding(.horizontal, 0)
                            .padding(.top, -40)
            
            
            // campo de confirmação de senha
            Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 353, height: 40)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
                   // .position(x: 200, y: 575)
          
            SecureField("Senha", text: $password)
                .textFieldStyle(.automatic) // Adds a visible border
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .frame(width: 340,alignment: .top)
                            //.position(x: 200, y: 560)
                            .padding(.horizontal, 0)
                            .padding(.top, -40)
                            
            
            Text("Obs: A senha deve ter no mínimo 8 caracteres.")
                .font(
                    Font.custom("Poppins-Medium", size: 11)
                        .weight(.heavy)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .frame(width: 267, alignment: .top)
                .padding(.horizontal, 0)
                .padding(.top, -10)
                .padding(.leading, -80)
         
            
            
            // campo de confirmação de senha
            Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 353, height: 40)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
                   // .position(x: 200, y: 650)
                    .padding(.horizontal, 0)
                    .padding(.top, 10)
            SecureField("Confirmar senha", text: $comfirmPW)
                .textFieldStyle(.automatic) // Adds a visible border
                            
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                            .frame(width: 340,alignment: .top)
                            //.position(x: 200, y: 635)
                            .padding(.horizontal, 0)
                            .padding(.top, -40)
                
            
                
            Button(action: { print("Botao clicado")}){ // verificar dados e mudar tela
             Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 172, height: 54)
                  .background(Color.botaoFiltros)
                  .cornerRadius(10)
                  .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
                  
            }
            .padding(.horizontal, 0)
            .padding(.top, 40)
         

            Text("Cadastrar")
             .font(
                 Font.custom("Poppins-Regular", size: 20)
                     .weight(.heavy)
             )
             .multilineTextAlignment(.center)
             .foregroundColor(.white)
             .frame(width: 267, alignment: .top)
             .padding(.horizontal, 0)
             .padding(.top, -50)
           
           
        }
        .frame(width: 593, height: 852)
        .background(
        LinearGradient(
        stops: [
        Gradient.Stop(color: Color.gradienteAzul, location: 0.00),
        Gradient.Stop(color: .white, location: 1.00),
        ],
        startPoint: UnitPoint(x: 0.5, y: 0),
        endPoint: UnitPoint(x: 0.5, y: 1)
        )
        )

        
    }
}
#Preview {
    TelaCadastro()
}
/* Button(action: { print("Botao clicado")}){
 Rectangle()
      .foregroundColor(.clear)
      .frame(width: 172, height: 54)
      .background(Color.botaoFiltros)
      .cornerRadius(10)
      .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
     
/* Rectangle()
     .foregroundColor(.clear)
     .frame(width: 172, height: 54)
     .background(Color(red: 0, green: 0.5, blue: 0.58))
     .cornerRadius(10)
     .shadow(color: .black.opacity(0.50), radius: 2, x: 0, y: 3)
     .position(x: 200, y: 750)*/
}
.padding(.horizontal, 0)
.padding(.bottom, -20)

Text("Cadastrar")
 .font(
     Font.custom("Poppins-Regular", size: 20)
         .weight(.heavy)
 )
 .multilineTextAlignment(.center)
 .foregroundColor(.white)
 .frame(width: 267, alignment: .top)*/
