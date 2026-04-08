//
//  TelaLogin.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 08/04/26.
//

import SwiftUI

struct TelaLogin: View {
    
    @State private var email: String = ""
    @State private var senha: String = ""
    
    var body: some View {
        ZStack {
            //Fundo em gradiente
            LinearGradient(
                gradient: Gradient(colors: [Color.gradienteAzul, Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            //Conteudo de tela
            VStack() {
                
                Spacer()
                
                VStack(spacing: 67) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 244, height: 267)
                    
                    HStack {
                        Text("Faça login para continuar")
                            .font(.custom("Poppins-Regular", size: 15))
                            .foregroundColor(.cinzaTexto)
                        
                        Spacer()
                    }
                }
                .padding(.horizontal, 26)
               
    
                //Inputs
                VStack {
                    
                    ZStack(alignment: .leading){
                        if email.isEmpty {
                            Text("E-mail")
                                .foregroundColor(.cinzaTexto.opacity(0.8))
                                .padding(.leading, 10)
                        }
                        
                        TextField("", text: $email)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5)
                    
                    ZStack(alignment: .leading){
                        if senha.isEmpty {
                            Text("Senha")
                                .foregroundColor(.cinzaTexto.opacity(0.8))
                                .padding(.leading, 10)
                        }
                        
                        SecureField("", text: $senha)
                            .foregroundColor(.black)
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5)
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 8)
                
                
                //botao + texto
                VStack(spacing: 53) {
                    Button(action: {
                        print("Login")
                    }) {
                        Text("Entrar")
                            .font(.custom("Poppins-Medium", size: 20))
                            .foregroundColor(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 16)
                            .background(Color.botaoFiltros)
                            .cornerRadius(10)
                            .shadow(color:.black.opacity(0.50), radius: 2, x: 0, y: 3)

                    }
                    .padding(.horizontal, 110)
                    
                    HStack {
                        Text("Não tem uma conta?")
                            .font(Font.custom("Poppins-Regular", size: 15))
                        Text("Cadastre-se!")
                            .font(Font.custom("Poppins-Medium", size: 15)) //é pra ser bold
                    }
                    .foregroundColor(.cinzaTexto)
                }
                .padding(.top, 20)
                
                Spacer(minLength: 0)
            }
        }
    }
}

#Preview {
    TelaLogin()
}
