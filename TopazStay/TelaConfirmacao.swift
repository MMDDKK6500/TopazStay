//
//  TelaConfirmacao.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 08/04/26.
//
import SwiftUI

struct TelaConfirmacao: View {
    
    @State var hotel: Hotel
    @State var escolhaQuarto: [EscolhaQuarto]
    
    @State private var estaApresentado: Bool = false
    
    
    var body: some View {
        ZStack {
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
                    ScrollView{
                        ForEach(escolhaQuarto)
                        { escolha in
                            ConfirmacaoQuarto(escolhaQuarto: escolha)
                        }
                        
                    }
                    .frame(width:  200, height: 250)
                    .padding(.top, -100)
                    
                }
                
                VStack{
                    Text(hotel.nome)
                        .font(
                            Font.custom("Rounded Mplus 1c", size: 36)
                                .weight(.heavy)
                        )
                        .frame(width: 200, height: 50)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .minimumScaleFactor(0.4)
                        .padding(.vertical,-300)
                        .padding(.horizontal, 0)
                    
                    
                    //Valor Total
                    // valorTotal = somaValores
                    Text("Valor total: R$\(String(format: "%.2f", somaDosQuartos(quartos: escolhaQuarto)))")
                        .font(
                            Font.custom("Poppin", size: 20)
                        )
                        .foregroundColor(.black)
                    
                        .padding(.top,-255)
                        .padding(.leading, 0)
                    
                    Text("09/11/2026 - 13/11/2026") // data coletada e editável
                        .font(
                            Font.custom("Poppins", size: 20)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.cinzaTexto)
                        .padding(.top,-230)
                        .padding(.leading, -30)
                    
                    Button(action: {
                        estaApresentado  = true
                        
                        print("Botao editar clicado")
                        
                    }){
                        Image(systemName: "square.and.pencil")
                            .scaleEffect(1.5)
                    }
                    .padding(.top,-245)
                    .padding(.leading, 250)
                    
                    
                    
                } // Fim do V Stack
                .blur(radius: estaApresentado ? 10 : 0) // 2. O blur agora afeta tudo o que está acima
                .animation(.default, value: estaApresentado)
                
                Text("Onde você deseja realizar o pagamento?")
                    .font(
                        Font.custom("Poppins", size: 14)
                            .weight(.medium)
                    )
                    .foregroundColor(Color.laranjaObservacao)
                    .frame(width: 294, height: 17, alignment: .topLeading)
                    .padding(.top,320)
                    .padding(.leading, 0)
                
                NavigationLink { //Tela Pagamento Reserva
                    PagamentoReserva(hotel: hotel)
                } label: {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 123, height: 43)
                        .background(Color.menuInferiorSuperior)
                        .cornerRadius(5)
                }
                .padding(.top,500)
                .padding(.leading, -140)
                
                Text("Hotel")
                    .font(
                        Font.custom("Poppins", size: 20)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 65, height: 15, alignment: .center)
                    .padding(.top,500)
                    .padding(.leading, -110)
                
                
                NavigationLink { // Tela Pagamento App
                    PagamentoApp(hotel: hotel)
                } label: {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 123, height: 43)
                        .background(Color.menuInferiorSuperior)
                        .cornerRadius(5)
                }
                .padding(.top,500)
                .padding(.leading, 140)
                
                Text("Aplicativo")
                    .font(
                        Font.custom("Poppins", size: 20)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 150, height: 15, alignment: .center)
                    .padding(.top,500)
                    .padding(.leading, 135)
                /*
                if estaApresentado == true{
                    ZStack{
                        ColetarData(estaApresentado: $estaApresentado)
                    }.animation(.spring(), value: estaApresentado)
                }*/
                
                
            } // fim do Z Stack
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
            .blur(radius: estaApresentado ? 10 : 0)
            .animation(.default, value: estaApresentado)
            
            if estaApresentado {
                ZStack {
                    // Overlay escuro opcional para destacar o pop-up
                    Color.black.opacity(0.1)
                        .ignoresSafeArea()
                        .onTapGesture { estaApresentado = false }
                    
                    ColetarData(estaApresentado: $estaApresentado)
                }
                .transition(.opacity)
                .zIndex(1)
            }
            
        }

    }
}
