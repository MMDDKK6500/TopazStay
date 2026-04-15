//
//  Local.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 10/04/26.
//

import SwiftUI

struct Local: View {
    let localHotel = ["Curitiba", "Distrito Federal", "Minas Gerais", "Rio de Janeiro", "São Paulo"] // os locais podem ser adicionados neste campo
    @Binding var estaApresentado: Bool // variável binding para verificar o estado do componente
    
    var body: some View {
        
         ZStack {
             Text("Selecione o local")
               .font(
                 Font.custom("Poppins Medium", size: 15)
                   .weight(.bold)
               )
               .multilineTextAlignment(.center)
               .foregroundColor(Color.botaoFiltros)
               .frame(width: 287, height: 19, alignment: .center)
               .padding(.top, -160)
             
             Text("Escolha o local do sua hospedagem")
               .font(Font.custom("Poppins", size: 12))
               .kerning(0.12)
               .multilineTextAlignment(.center)
               .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38).opacity(0.8))
               .frame(width: 192, height: 52, alignment: .top)
               .padding(.top, -140)
             
             ScrollView(.vertical){
                 VStack{
                     ForEach(localHotel, id: \.self){ localHotel in // para cada elemento criado no localHotel, adicionar um card selecionável com o respectivo nome
                         Button(action: {
                             print("Botao \(localHotel) clicado ")
                             withAnimation {
                                 estaApresentado = false
                             }
                         }){
                             Rectangle()
                                 .foregroundColor(.clear)
                                 .frame(width: 242, height: 40)
                                 .background(Color.botaoFiltros)
                                 .cornerRadius(10)
                                 .shadow(color: .black.opacity(0.35), radius: 2, x: 0, y: 2)
                         }
                         ZStack{
                             Text(localHotel) // criação dos componentes com seus respectivos nomes
                               .font(Font.custom("Poppins", size: 15))
                               .multilineTextAlignment(.center)
                               .foregroundColor(.white)
                               .frame(width: 150, height: 19, alignment: .center)
                               .padding(.top, -40)
                         }
                        
                          
                     }
                 }
                 .scrollTargetLayout()
             }
             .frame(width: 287, height: 250)
             .padding(.top, 80)
         }
         .frame(width: 287, height: 375)
         .background(Color(red: 0.95, green: 0.95, blue: 0.95))
         .cornerRadius(10)
     }
     
    }


#Preview {
    @Previewable @State var mostrar = true
    Local(estaApresentado: $mostrar)
}
