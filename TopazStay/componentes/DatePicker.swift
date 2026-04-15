//
//  DatePicker.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 09/04/26.
//
import SwiftUI


enum Status{
    case estado1 // seleção de ida
    case estado2 // seleção de volta
}
struct ColetarData: View {
    @State public var dataIDASelecionada = Date()
    @State public var dataVOLTASelecionada = Date()
    @State public var textoIDA: String = ""
    @State public var textoVolta: String = ""
    
    //@State public var textoIDA: String = ""
    @State public var estadoAtual: Status = .estado1
   //  @Binding var modificarBool: Bool
    
    @Binding var estaApresentado: Bool
  
    var body: some View{
        
        ZStack {
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 351, height: 529)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                .cornerRadius(10)
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 145, height: 33)
                .background(.white)
                .cornerRadius(10)
                .padding(.top, -170)
                .padding(.leading, -160)
            
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 145, height: 33)
                .background(.white)
                .cornerRadius(10)
                .padding(.top, -170)
                .padding(.leading, 180)
            
            Text("Selecione datas de ida e volta")
                .font(
                    Font.custom("Poppins Medium", size: 15)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color.botaoFiltros)
                .frame(width: 287, height: 19, alignment: .center)
                .padding(.top, -230)
            
            Text("Escolha o período da sua viagem") 
                .font(
                    Font.custom("Poppins Medium", size: 12)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(Color.cinzaTexto)
                .frame(width: 287, height: 19, alignment: .center)
                .padding(.top, -200)
            
            Rectangle() // calendario
                .foregroundColor(.white)
                .frame(width: 317, height: 308)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                .cornerRadius(10)
                .padding(.top, 60)
            
            //Botao Confirmar
            
            Button(action: {
              alternarEstado() // alternar para  a segunda data
            })
            {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 318, height: 40)
                    .background(Color(red: 0, green: 0.5, blue: 0.58))
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.35), radius: 2, x: 0, y: 1)
                    .padding(.top, 450)
            }
            
            Text("Confirmar")
                .font(
                    Font.custom("Poppins Medium", size: 15)
                        .weight(.bold)
                )
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .frame(width: 159, height: 19, alignment: .center)
                .padding(.top, 450)
            
            
            
            
            
            
            
            
            // CALENDARIO
            ZStack{
            
                switch estadoAtual {
                        case .estado1:
                    DatePicker("Escolha uma data", selection: $dataIDASelecionada, displayedComponents: [.date])
                    
                        .datePickerStyle(.graphical)
                        .frame(width: 320, height: 40)
                        .scaleEffect(0.9)
                        .padding(.top, 60)
                            Text("Ida \(dataIDASelecionada.formatted(date: .numeric, time: .omitted))")
                                .padding(.top, -165)
                                .padding(.leading, -150)
                        case .estado2:
                    DatePicker("Escolha uma data", selection: $dataVOLTASelecionada, displayedComponents: [.date])
                        
                        .datePickerStyle(.graphical)
                        .frame(width: 320, height: 40)
                        .scaleEffect(0.9)
                        .padding(.top, 60)
                            Text("Ida \(dataIDASelecionada.formatted(date: .numeric, time: .omitted))")
                                .padding(.top, -165)
                                .padding(.leading, -150)
                            Text("Volta \(dataVOLTASelecionada.formatted(date: .numeric, time: .omitted))")
                                .padding(.top, -165)
                                .padding(.leading, 180)
               
                }
               
            }
            
            
        }
        .frame(width: 369, height: 529)
        .background(.white.opacity(0))
        
    }
    
    
    // coletar data e alterar estado
    func alternarEstado() {
            switch estadoAtual {
            case .estado1:
                estadoAtual = .estado2
                print("Fui para o Estado 2")
            case .estado2:
                print(dataIDASelecionada)
                print(dataVOLTASelecionada)
                
                withAnimation {
                    estaApresentado = false
                }
            }
        }
}




#Preview{
    @Previewable @State var mostrar = true
    ColetarData(estaApresentado: $mostrar)
}



