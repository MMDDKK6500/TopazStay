//
//  PopupPagamento.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 08/04/26.
//

import SwiftUI

struct PopupAddCartao: View {
    
    @State var nome: String = ""
    @State var numero: String = ""
    @State var validade: String = ""
    @State var cvv: String = ""
    
    var body: some View {
        VStack {
            Text("Cadastro de Cartão")
                .font(Font.custom("Rounded Mplus 1c ExtraBold", size: 25))
                .padding(.bottom, 5)
            
            HStack {
                Text("Titular do cartão")
                Spacer()
            }
            TextField("s", text: $nome)
                .padding(.leading, 10)
                .padding(.vertical, 5)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                    )
            
            HStack {
                Text("Número do cartão")
                Spacer()
            }
            
            TextField("XXXXXXXXXXXXXXXX", text: $numero)
                .padding(.leading, 10)
                .padding(.vertical, 5)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Color.white)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                    )
            
            
            HStack {
                Text("Data de validade")
                
                Spacer()
                
                Text("CVV/CVC")
            }
            .padding(.top, 5)
            HStack {
                TextField("MM/AA", text: $validade)
                    .padding(.leading, 10)
                    .padding(.vertical, 5)
                    .frame(maxWidth: 100)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        )
                
                
                Spacer()
                
                TextField("XXX", text: $cvv)
                    .padding(.leading, 10)
                    .padding(.vertical, 5)
                    .frame(maxWidth: 100)
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white)
                            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        )
                
            }
            .padding(.bottom, 10)
            
            HStack {
                Button(action: doSomething) {
                    Text("Cancelar")
                        .foregroundStyle(Color.cinzaTexto)
                        .font(Font.custom("Poppins-Medium", size: 20))
                        .padding(15)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.white)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        )
                }
                Spacer()
                Button(action: doSomething) {
                    Text("Cadastrar")
                        .foregroundStyle(Color.white)
                        .font(Font.custom("Poppins-Medium", size: 20))
                        .padding(15)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(.bordaCartaoBotaoPopup)
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                        )
                }
            }
        }
        .padding()
        .padding(Edge.Set.horizontal, 30)
        //.padding(Edge.Set.vertical, 10)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(
                    LinearGradient(
                        colors: [Color.gradienteLaranja, Color.white],
                        startPoint: .top,
                        endPoint: .bottom,
                    )
                )
        )
    }
}

#Preview {
    PopupAddCartao()
}
