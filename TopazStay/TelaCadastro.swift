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
        ZStack {
            //Fundo em gradiente
            LinearGradient(
                gradient: Gradient(colors: [Color.gradienteAzul, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack {
                HStack {
                    Button(action: {
                        // Ação para voltar de tela
                        }) {
                            
                        }
                    
                    // campo de confirmação de senha
                    Text("Criar conta")
                        .font(
                            Font.custom("Poppins-Regular", size: 30)
                                .weight(.heavy)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.cinzaTexto.opacity(0.6))
                        .padding(.leading, 20)
                    
                    Spacer()
                }
                .padding(.horizontal, 30)
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 244, height: 267)
                    .padding(.top,40)
             
                //Inputs
                VStack {
                    TextFieldView(placeholder: "Nome completo", texto: $name).padding(.top, 50)
                    TextFieldView(placeholder: "E-mail", texto: $email)
                    SecureFieldView(placeholder: "Senha", texto: $password)
                    Text("Obs: A senha deve ter no mínimo 8 caracteres.")
                        .font(
                            Font.custom("Poppins-Medium", size: 11)
                                .weight(.heavy)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.cinzaTexto.opacity(0.5))
                        .frame(width: 267, alignment: .top)
                        .padding(.horizontal, 0)
                        .padding(.top, -2)
                        .padding(.leading, -80)
                    SecureFieldView(placeholder: "Confirmar senha", texto: $comfirmPW).padding(.top, 10)
                }
                .padding(.horizontal, 20)
                .padding(.top, 8)
                    
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
                     Font.custom("Poppins-Medium", size: 20)
                         .weight(.heavy)
                 )
                 .multilineTextAlignment(.center)
                 .foregroundColor(.white)
                 .frame(width: 267, alignment: .top)
                 .padding(.horizontal, 0)
                 .padding(.top, -50)
            
        }
           
        }
    }
}
#Preview {
    TelaCadastro()
}

