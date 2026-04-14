//
//  Escolha.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 13/04/26.
//

import SwiftUI

struct Escolha: View {
   // @State private var showSheet: Bool = false
    @State private var offset:CGFloat = 60
    @State private var lastOffset: CGFloat = 0
    var quartos: [Quarto]
   // var soma: Double = 0
    
  
   
    
    var body: some View {
        
        GeometryReader { geometry in
                    
                    let screenHeight = geometry.size.height
                    let minHeight = screenHeight / 6
                    let maxHeight = screenHeight / 1.4
                    
                
                    ZStack(alignment: .bottom) {
                       
                        VStack {
                            Capsule()
                                .frame(width: 85, height: 6)
                                .foregroundColor(.white)
                                .padding(.top, 8)
                            Text("Total de reservas")
                              .font(
                                Font.custom("Poppins", size: 20)
                                  .weight(.semibold)
                              )
                              .foregroundColor(.white.opacity(0.7))
                              .frame(width: 245, height: 24, alignment: .topLeading)
                              .padding(.top, 15)
                              .padding(.leading, -90)
                            
                            Text("R$ \(String(format: "%.2f", somaDosQuartos(quartos: quartos)))") // preço variável
                              .font(
                                Font.custom("Poppins", size: 20)
                                  .weight(.medium)
                              )
                              .foregroundColor(.white)
                              .frame(width: 108, height: 20, alignment: .topLeading)
                              .padding(.top, -30)
                              .padding(.leading, 200)
                            ZStack{
                                Rectangle()
                                    .frame(width: 350, height: 385)
                                    .background(Color.white)
                                    .colorInvert()
                                    .cornerRadius(20)
                                    .padding(.top, 40)
                                
                                // Conteúdo da escolha de quartos.
                                
                                ScrollView(.vertical){
                                    VStack(spacing: -10){ // espaçamento
                                        ForEach(quartos) { quarto in
                                            CardEscolha(quarto: quarto)
                                            }
                                        }
                                    //somaDosQuartos += quarto.valor
                                    
                                }
                                .padding(.top, 40)
                                .frame(width: 350, height: 421)
                            }
                            NavigationLink {
                                TelaConfirmacao()
                            } label: {
                                Rectangle()
                                    .frame(width: 183, height: 36)
                                    .foregroundColor(Color.botaoFiltros)
                                    .cornerRadius(10)
                            }
                                    .padding(.top, 15)
                                    .padding(.leading, 150)
                                Text("Confirmar reserva")
                                    .font(
                                        Font.custom("Poppins", size: 15)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(.white)
                                    .padding(.top, -35)
                                    .padding(.leading, 150)
                                // ZStack {   .frame(width: 393, height: 520) }
                           
                           
                            Spacer()
                        }
                        .frame(height: 700)
                        .frame(maxWidth: .infinity)
                        .background(Color.menuInferiorSuperior)
                        .clipShape(
                            UnevenRoundedRectangle(
                                topLeadingRadius: 20,
                                bottomLeadingRadius: 0,
                                bottomTrailingRadius: 0,
                                topTrailingRadius: 20
                            )
                        )
                        .shadow(radius: 10)
                        .offset(y: screenHeight - minHeight + offset)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    let newOffset = value.translation.height + lastOffset
                                    
                                    // Limita entre aberto e fechado
                                    if newOffset <= 0 && newOffset >= -(maxHeight - minHeight) {
                                        offset = newOffset
                                    }
                                }
                                .onEnded { _ in
                                    
                                    // Se arrastou mais da metade, abre
                                    if -offset > (maxHeight - minHeight) / 1.4 {
                                        offset = -(maxHeight - minHeight)
                                    } else {
                                        offset = 60
                                    }
                                    
                                    lastOffset = offset
                                }
                        )
                    }
                    
                }//safeAreaInset(edge: .bottom)
    
    }//.safeAreaInset(edge: .bottom)
}



#Preview {
    Escolha(quartos: hoteis[0].quartos)
    
    
    
    /*  @Previewable let hotel: Hotel = Hotel(
     nome: "Hotel dos bão",
     local: "aqui",
     avaliacao: 5,
     descricao: "Hotel muito bom com uma descrição muito boa que nunca acaba pois esse hotel realmente é muito muito bom ta?\n\nTipo, muito bom mesmo mano, c não tem IDEIA do quão bom esse hotel é mano, slg, se chama copacaban palace, e vc NUNCA vai adivinhar isso... fica em copacabana",
     imagem: "imagens/hoteis/2",
     favorito: true,
     quartos: [
         Quarto(
             nome: "Padrão",
             descricao: "Descrição genial",
             maxPessoas: 2,
             valor: 350,
             imagem: "imagens/quartos/8"
         ),
         Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
         Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
         Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8")],
     comentarios: [
         Comentario(
             foto: "logo",
             nome: "Guilherme",
             avaliacao: 4,
             texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
         ),
         Comentario(
             foto: "logo",
             nome: "Guilherme",
             avaliacao: 4,
             texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
         ),
         Comentario(
             foto: "logo",
             nome: "Guilherme",
             avaliacao: 4,
             texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
         )
     ])*/
}
